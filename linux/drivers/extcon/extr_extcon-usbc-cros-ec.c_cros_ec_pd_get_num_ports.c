
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_response_usb_pd_ports {int num_ports; } ;
struct cros_ec_extcon_info {int dummy; } ;
typedef int resp ;


 int EC_CMD_USB_PD_PORTS ;
 int cros_ec_pd_command (struct cros_ec_extcon_info*,int ,int ,int *,int ,struct ec_response_usb_pd_ports*,int) ;

__attribute__((used)) static int cros_ec_pd_get_num_ports(struct cros_ec_extcon_info *info)
{
 struct ec_response_usb_pd_ports resp;
 int ret;

 ret = cros_ec_pd_command(info, EC_CMD_USB_PD_PORTS,
     0, ((void*)0), 0, &resp, sizeof(resp));
 if (ret < 0)
  return ret;

 return resp.num_ports;
}
