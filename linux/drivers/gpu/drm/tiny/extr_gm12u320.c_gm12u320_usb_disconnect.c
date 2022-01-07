
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct gm12u320_device {int dummy; } ;
struct drm_device {struct gm12u320_device* dev_private; } ;


 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unplug (struct drm_device*) ;
 int gm12u320_stop_fb_update (struct gm12u320_device*) ;
 struct drm_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void gm12u320_usb_disconnect(struct usb_interface *interface)
{
 struct drm_device *dev = usb_get_intfdata(interface);
 struct gm12u320_device *gm12u320 = dev->dev_private;

 gm12u320_stop_fb_update(gm12u320);
 drm_dev_unplug(dev);
 drm_dev_put(dev);
}
