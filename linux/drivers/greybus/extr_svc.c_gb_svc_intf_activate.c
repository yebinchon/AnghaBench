
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_svc_intf_activate_response {scalar_t__ status; int intf_type; } ;
struct gb_svc_intf_activate_request {int intf_id; } ;
struct gb_svc {int dev; int connection; } ;
typedef int response ;
typedef int request ;


 int EREMOTEIO ;
 scalar_t__ GB_SVC_OP_SUCCESS ;
 int GB_SVC_TYPE_INTF_ACTIVATE ;
 int SVC_INTF_ACTIVATE_TIMEOUT ;
 int dev_err (int *,char*,int ,scalar_t__) ;
 int gb_operation_sync_timeout (int ,int ,struct gb_svc_intf_activate_request*,int,struct gb_svc_intf_activate_response*,int,int ) ;

int gb_svc_intf_activate(struct gb_svc *svc, u8 intf_id, u8 *intf_type)
{
 struct gb_svc_intf_activate_request request;
 struct gb_svc_intf_activate_response response;
 int ret;

 request.intf_id = intf_id;

 ret = gb_operation_sync_timeout(svc->connection,
     GB_SVC_TYPE_INTF_ACTIVATE,
     &request, sizeof(request),
     &response, sizeof(response),
     SVC_INTF_ACTIVATE_TIMEOUT);
 if (ret < 0)
  return ret;
 if (response.status != GB_SVC_OP_SUCCESS) {
  dev_err(&svc->dev, "failed to activate interface %u: %u\n",
   intf_id, response.status);
  return -EREMOTEIO;
 }

 *intf_type = response.intf_type;

 return 0;
}
