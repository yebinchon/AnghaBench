
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_usb_pd_power_info {int type; } ;
struct ec_params_usb_pd_power_info {int port; } ;
struct cros_ec_extcon_info {int port_id; } ;
typedef int resp ;
typedef int req ;


 int EC_CMD_USB_PD_POWER_INFO ;
 int cros_ec_pd_command (struct cros_ec_extcon_info*,int ,int ,struct ec_params_usb_pd_power_info*,int,struct ec_response_usb_pd_power_info*,int) ;

__attribute__((used)) static int cros_ec_usb_get_power_type(struct cros_ec_extcon_info *info)
{
 struct ec_params_usb_pd_power_info req;
 struct ec_response_usb_pd_power_info resp;
 int ret;

 req.port = info->port_id;
 ret = cros_ec_pd_command(info, EC_CMD_USB_PD_POWER_INFO, 0,
     &req, sizeof(req), &resp, sizeof(resp));
 if (ret < 0)
  return ret;

 return resp.type;
}
