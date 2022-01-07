
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct usb_device {int dummy; } ;
typedef enum kovaplus_control_requests { ____Placeholder_kovaplus_control_requests } kovaplus_control_requests ;


 int kovaplus_send_control (struct usb_device*,int ,int) ;

__attribute__((used)) static int kovaplus_select_profile(struct usb_device *usb_dev, uint number,
  enum kovaplus_control_requests request)
{
 return kovaplus_send_control(usb_dev, number, request);
}
