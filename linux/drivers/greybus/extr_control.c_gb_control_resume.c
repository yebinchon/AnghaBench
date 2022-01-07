
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gb_control {TYPE_2__* connection; } ;
struct TYPE_4__ {TYPE_1__* intf; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int gb_connection_enable_tx (TYPE_2__*) ;

int gb_control_resume(struct gb_control *control)
{
 int ret;

 ret = gb_connection_enable_tx(control->connection);
 if (ret) {
  dev_err(&control->connection->intf->dev,
   "failed to enable control connection: %d\n", ret);
  return ret;
 }

 return 0;
}
