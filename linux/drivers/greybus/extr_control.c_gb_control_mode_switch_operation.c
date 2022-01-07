
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int dummy; } ;
struct gb_control {int dev; int connection; } ;


 int ENOMEM ;
 int GB_CONTROL_TYPE_MODE_SWITCH ;
 int GB_OPERATION_FLAG_UNIDIRECTIONAL ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 struct gb_operation* gb_operation_create_core (int ,int ,int ,int ,int ,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync (struct gb_operation*) ;

int gb_control_mode_switch_operation(struct gb_control *control)
{
 struct gb_operation *operation;
 int ret;

 operation = gb_operation_create_core(control->connection,
          GB_CONTROL_TYPE_MODE_SWITCH,
          0, 0,
          GB_OPERATION_FLAG_UNIDIRECTIONAL,
          GFP_KERNEL);
 if (!operation)
  return -ENOMEM;

 ret = gb_operation_request_send_sync(operation);
 if (ret)
  dev_err(&control->dev, "failed to send mode switch: %d\n", ret);

 gb_operation_put(operation);

 return ret;
}
