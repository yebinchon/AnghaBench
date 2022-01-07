
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct gb_operation_msg_hdr {int type; int operation_id; } ;
struct gb_operation {int work; int request; } ;
struct gb_connection {int wq; int name; TYPE_1__* hd; } ;
struct TYPE_2__ {int dev; } ;


 int EINPROGRESS ;
 int dev_err (int *,char*,int ) ;
 struct gb_operation* gb_operation_create_incoming (struct gb_connection*,int ,int ,void*,size_t) ;
 int gb_operation_get_active (struct gb_operation*) ;
 int gb_operation_put (struct gb_operation*) ;
 scalar_t__ gb_operation_result_set (struct gb_operation*,int ) ;
 int le16_to_cpu (int ) ;
 int queue_work (int ,int *) ;
 int trace_gb_message_recv_request (int ) ;

__attribute__((used)) static void gb_connection_recv_request(struct gb_connection *connection,
    const struct gb_operation_msg_hdr *header,
    void *data, size_t size)
{
 struct gb_operation *operation;
 u16 operation_id;
 u8 type;
 int ret;

 operation_id = le16_to_cpu(header->operation_id);
 type = header->type;

 operation = gb_operation_create_incoming(connection, operation_id,
       type, data, size);
 if (!operation) {
  dev_err(&connection->hd->dev,
   "%s: can't create incoming operation\n",
   connection->name);
  return;
 }

 ret = gb_operation_get_active(operation);
 if (ret) {
  gb_operation_put(operation);
  return;
 }
 trace_gb_message_recv_request(operation->request);





 if (gb_operation_result_set(operation, -EINPROGRESS))
  queue_work(connection->wq, &operation->work);
}
