
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_usb_pd_control_v1 {int enabled; int polarity; int role; } ;
struct ec_params_usb_pd_control {int swap; int mux; int role; int port; } ;
struct cros_ec_extcon_info {int port_id; } ;
typedef int resp ;
typedef int pd_control ;


 int EC_CMD_USB_PD_CONTROL ;
 int ENOTCONN ;
 int PD_CTRL_RESP_ENABLED_CONNECTED ;
 int USB_PD_CTRL_MUX_NO_CHANGE ;
 int USB_PD_CTRL_ROLE_NO_CHANGE ;
 int USB_PD_CTRL_SWAP_NONE ;
 int cros_ec_pd_command (struct cros_ec_extcon_info*,int ,int,struct ec_params_usb_pd_control*,int,struct ec_response_usb_pd_control_v1*,int) ;

__attribute__((used)) static int cros_ec_usb_get_role(struct cros_ec_extcon_info *info,
    bool *polarity)
{
 struct ec_params_usb_pd_control pd_control;
 struct ec_response_usb_pd_control_v1 resp;
 int ret;

 pd_control.port = info->port_id;
 pd_control.role = USB_PD_CTRL_ROLE_NO_CHANGE;
 pd_control.mux = USB_PD_CTRL_MUX_NO_CHANGE;
 pd_control.swap = USB_PD_CTRL_SWAP_NONE;
 ret = cros_ec_pd_command(info, EC_CMD_USB_PD_CONTROL, 1,
     &pd_control, sizeof(pd_control),
     &resp, sizeof(resp));
 if (ret < 0)
  return ret;

 if (!(resp.enabled & PD_CTRL_RESP_ENABLED_CONNECTED))
  return -ENOTCONN;

 *polarity = resp.polarity;

 return resp.role;
}
