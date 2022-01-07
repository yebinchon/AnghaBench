
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct gb_operation_msg_hdr {int operation_id; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct gb_operation {TYPE_2__ timer; TYPE_1__* request; scalar_t__ id; scalar_t__ callback; struct gb_connection* connection; } ;
struct gb_connection {int op_cycle; } ;
typedef int gfp_t ;
typedef scalar_t__ gb_operation_callback ;
struct TYPE_3__ {struct gb_operation_msg_hdr* header; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 unsigned int U16_MAX ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ atomic_inc_return (int *) ;
 int cpu_to_le16 (scalar_t__) ;
 scalar_t__ gb_connection_is_offloaded (struct gb_connection*) ;
 int gb_message_send (TYPE_1__*,int ) ;
 int gb_operation_get (struct gb_operation*) ;
 int gb_operation_get_active (struct gb_operation*) ;
 scalar_t__ gb_operation_is_unidirectional (struct gb_operation*) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_put_active (struct gb_operation*) ;
 int gb_operation_result_set (struct gb_operation*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;

int gb_operation_request_send(struct gb_operation *operation,
         gb_operation_callback callback,
         unsigned int timeout,
         gfp_t gfp)
{
 struct gb_connection *connection = operation->connection;
 struct gb_operation_msg_hdr *header;
 unsigned int cycle;
 int ret;

 if (gb_connection_is_offloaded(connection))
  return -EBUSY;

 if (!callback)
  return -EINVAL;






 operation->callback = callback;





 if (gb_operation_is_unidirectional(operation)) {
  operation->id = 0;
 } else {
  cycle = (unsigned int)atomic_inc_return(&connection->op_cycle);
  operation->id = (u16)(cycle % U16_MAX + 1);
 }

 header = operation->request->header;
 header->operation_id = cpu_to_le16(operation->id);

 gb_operation_result_set(operation, -EINPROGRESS);





 gb_operation_get(operation);
 ret = gb_operation_get_active(operation);
 if (ret)
  goto err_put;

 ret = gb_message_send(operation->request, gfp);
 if (ret)
  goto err_put_active;

 if (timeout) {
  operation->timer.expires = jiffies + msecs_to_jiffies(timeout);
  add_timer(&operation->timer);
 }

 return 0;

err_put_active:
 gb_operation_put_active(operation);
err_put:
 gb_operation_put(operation);

 return ret;
}
