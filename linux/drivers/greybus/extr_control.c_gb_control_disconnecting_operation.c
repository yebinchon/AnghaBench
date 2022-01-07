
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct gb_operation {TYPE_1__* request; } ;
struct gb_control_disconnecting_request {int cport_id; } ;
struct gb_control {int dev; int connection; } ;
struct TYPE_2__ {struct gb_control_disconnecting_request* payload; } ;


 int ENOMEM ;
 int GB_CONTROL_TYPE_DISCONNECTING ;
 int GFP_KERNEL ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 struct gb_operation* gb_operation_create_core (int ,int ,int,int ,int ,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync (struct gb_operation*) ;

int gb_control_disconnecting_operation(struct gb_control *control,
           u16 cport_id)
{
 struct gb_control_disconnecting_request *request;
 struct gb_operation *operation;
 int ret;

 operation = gb_operation_create_core(control->connection,
          GB_CONTROL_TYPE_DISCONNECTING,
          sizeof(*request), 0, 0,
          GFP_KERNEL);
 if (!operation)
  return -ENOMEM;

 request = operation->request->payload;
 request->cport_id = cpu_to_le16(cport_id);

 ret = gb_operation_request_send_sync(operation);
 if (ret) {
  dev_err(&control->dev, "failed to send disconnecting: %d\n",
   ret);
 }

 gb_operation_put(operation);

 return ret;
}
