
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc_pwrmon_rail_names_get_response {int status; } ;
struct gb_svc {int dev; int connection; } ;


 int EREMOTEIO ;
 int GB_SVC_OP_SUCCESS ;
 int GB_SVC_TYPE_PWRMON_RAIL_NAMES_GET ;
 int dev_err (int *,char*,int) ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_svc_pwrmon_rail_names_get_response*,size_t) ;

__attribute__((used)) static int gb_svc_pwrmon_rail_names_get(struct gb_svc *svc,
  struct gb_svc_pwrmon_rail_names_get_response *response,
  size_t bufsize)
{
 int ret;

 ret = gb_operation_sync(svc->connection,
    GB_SVC_TYPE_PWRMON_RAIL_NAMES_GET, ((void*)0), 0,
    response, bufsize);
 if (ret) {
  dev_err(&svc->dev, "failed to get rail names: %d\n", ret);
  return ret;
 }

 if (response->status != GB_SVC_OP_SUCCESS) {
  dev_err(&svc->dev,
   "SVC error while getting rail names: %u\n",
   response->status);
  return -EREMOTEIO;
 }

 return 0;
}
