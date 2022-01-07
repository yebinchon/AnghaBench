
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_svc_intf_resume_response {int status; } ;
struct gb_svc_intf_resume_request {int intf_id; } ;
struct gb_svc {int dev; int connection; } ;
typedef int response ;
typedef int request ;


 int EREMOTEIO ;
 int GB_SVC_OP_SUCCESS ;
 int GB_SVC_TYPE_INTF_RESUME ;
 int SVC_INTF_RESUME_TIMEOUT ;
 int dev_err (int *,char*,int ,int) ;
 int gb_operation_sync_timeout (int ,int ,struct gb_svc_intf_resume_request*,int,struct gb_svc_intf_resume_response*,int,int ) ;

int gb_svc_intf_resume(struct gb_svc *svc, u8 intf_id)
{
 struct gb_svc_intf_resume_request request;
 struct gb_svc_intf_resume_response response;
 int ret;

 request.intf_id = intf_id;

 ret = gb_operation_sync_timeout(svc->connection,
     GB_SVC_TYPE_INTF_RESUME,
     &request, sizeof(request),
     &response, sizeof(response),
     SVC_INTF_RESUME_TIMEOUT);
 if (ret < 0) {
  dev_err(&svc->dev, "failed to send interface resume %u: %d\n",
   intf_id, ret);
  return ret;
 }

 if (response.status != GB_SVC_OP_SUCCESS) {
  dev_err(&svc->dev, "failed to resume interface %u: %u\n",
   intf_id, response.status);
  return -EREMOTEIO;
 }

 return 0;
}
