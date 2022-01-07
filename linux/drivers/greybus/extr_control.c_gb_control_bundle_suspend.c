
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_control_bundle_pm_response {int status; } ;
struct gb_control_bundle_pm_request {int bundle_id; } ;
struct gb_control {int dev; int connection; } ;
typedef int response ;
typedef int request ;


 int GB_CONTROL_BUNDLE_PM_OK ;
 int GB_CONTROL_TYPE_BUNDLE_SUSPEND ;
 int dev_err (int *,char*,int ,int) ;
 int gb_control_bundle_pm_status_map (int) ;
 int gb_operation_sync (int ,int ,struct gb_control_bundle_pm_request*,int,struct gb_control_bundle_pm_response*,int) ;

int gb_control_bundle_suspend(struct gb_control *control, u8 bundle_id)
{
 struct gb_control_bundle_pm_request request;
 struct gb_control_bundle_pm_response response;
 int ret;

 request.bundle_id = bundle_id;
 ret = gb_operation_sync(control->connection,
    GB_CONTROL_TYPE_BUNDLE_SUSPEND, &request,
    sizeof(request), &response, sizeof(response));
 if (ret) {
  dev_err(&control->dev, "failed to send bundle %u suspend: %d\n",
   bundle_id, ret);
  return ret;
 }

 if (response.status != GB_CONTROL_BUNDLE_PM_OK) {
  dev_err(&control->dev, "failed to suspend bundle %u: %d\n",
   bundle_id, response.status);
  return gb_control_bundle_pm_status_map(response.status);
 }

 return 0;
}
