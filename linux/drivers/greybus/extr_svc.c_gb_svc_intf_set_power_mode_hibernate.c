
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gb_svc_intf_set_pwrm_response {int result_code; } ;
struct gb_svc_intf_set_pwrm_request {void* rx_mode; void* tx_mode; int hs_series; int intf_id; } ;
struct gb_svc {int dev; int connection; } ;
typedef int response ;
typedef int request ;


 int EIO ;
 int GB_SVC_SETPWRM_PWR_OK ;
 int GB_SVC_TYPE_INTF_SET_PWRM ;
 void* GB_SVC_UNIPRO_HIBERNATE_MODE ;
 int GB_SVC_UNIPRO_HS_SERIES_A ;
 int dev_err (int *,char*,int ,int) ;
 int gb_operation_sync (int ,int ,struct gb_svc_intf_set_pwrm_request*,int,struct gb_svc_intf_set_pwrm_response*,int) ;
 int memset (struct gb_svc_intf_set_pwrm_request*,int ,int) ;

int gb_svc_intf_set_power_mode_hibernate(struct gb_svc *svc, u8 intf_id)
{
 struct gb_svc_intf_set_pwrm_request request;
 struct gb_svc_intf_set_pwrm_response response;
 int ret;
 u16 result_code;

 memset(&request, 0, sizeof(request));

 request.intf_id = intf_id;
 request.hs_series = GB_SVC_UNIPRO_HS_SERIES_A;
 request.tx_mode = GB_SVC_UNIPRO_HIBERNATE_MODE;
 request.rx_mode = GB_SVC_UNIPRO_HIBERNATE_MODE;

 ret = gb_operation_sync(svc->connection, GB_SVC_TYPE_INTF_SET_PWRM,
    &request, sizeof(request),
    &response, sizeof(response));
 if (ret < 0) {
  dev_err(&svc->dev,
   "failed to send set power mode operation to interface %u: %d\n",
   intf_id, ret);
  return ret;
 }

 result_code = response.result_code;
 if (result_code != GB_SVC_SETPWRM_PWR_OK) {
  dev_err(&svc->dev,
   "failed to hibernate the link for interface %u: %u\n",
   intf_id, result_code);
  return -EIO;
 }

 return 0;
}
