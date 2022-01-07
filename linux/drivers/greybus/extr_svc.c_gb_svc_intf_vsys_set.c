
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_svc_intf_vsys_response {scalar_t__ result_code; } ;
struct gb_svc_intf_vsys_request {int intf_id; } ;
struct gb_svc {int connection; } ;
typedef int response ;
typedef int request ;


 int EREMOTEIO ;
 scalar_t__ GB_SVC_INTF_VSYS_OK ;
 int GB_SVC_TYPE_INTF_VSYS_DISABLE ;
 int GB_SVC_TYPE_INTF_VSYS_ENABLE ;
 int gb_operation_sync (int ,int,struct gb_svc_intf_vsys_request*,int,struct gb_svc_intf_vsys_response*,int) ;

int gb_svc_intf_vsys_set(struct gb_svc *svc, u8 intf_id, bool enable)
{
 struct gb_svc_intf_vsys_request request;
 struct gb_svc_intf_vsys_response response;
 int type, ret;

 request.intf_id = intf_id;

 if (enable)
  type = GB_SVC_TYPE_INTF_VSYS_ENABLE;
 else
  type = GB_SVC_TYPE_INTF_VSYS_DISABLE;

 ret = gb_operation_sync(svc->connection, type,
    &request, sizeof(request),
    &response, sizeof(response));
 if (ret < 0)
  return ret;
 if (response.result_code != GB_SVC_INTF_VSYS_OK)
  return -EREMOTEIO;
 return 0;
}
