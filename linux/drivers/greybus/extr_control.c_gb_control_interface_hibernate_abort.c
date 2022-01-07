
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control_intf_pm_response {int status; } ;
struct gb_control {int dev; int connection; } ;
typedef int response ;


 int GB_CONTROL_INTF_PM_OK ;
 int GB_CONTROL_TYPE_INTF_HIBERNATE_ABORT ;
 int dev_err (int *,char*,int) ;
 int gb_control_interface_pm_status_map (int) ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_control_intf_pm_response*,int) ;

int gb_control_interface_hibernate_abort(struct gb_control *control)
{
 struct gb_control_intf_pm_response response;
 int ret;

 ret = gb_operation_sync(control->connection,
    GB_CONTROL_TYPE_INTF_HIBERNATE_ABORT, ((void*)0), 0,
    &response, sizeof(response));
 if (ret) {
  dev_err(&control->dev,
   "failed to send interface aborting hibernate: %d\n",
   ret);
  return ret;
 }

 if (response.status != GB_CONTROL_INTF_PM_OK) {
  dev_err(&control->dev, "interface error while aborting hibernate: %d\n",
   response.status);
  return gb_control_interface_pm_status_map(response.status);
 }

 return 0;
}
