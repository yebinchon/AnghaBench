
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int pm_message_t ;


 int drm_kms_helper_poll_disable (struct drm_device*) ;
 struct drm_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int udl_usb_suspend(struct usb_interface *interface,
      pm_message_t message)
{
 struct drm_device *dev = usb_get_intfdata(interface);

 drm_kms_helper_poll_disable(dev);
 return 0;
}
