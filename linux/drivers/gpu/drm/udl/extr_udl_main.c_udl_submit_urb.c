
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {size_t transfer_buffer_length; } ;
struct TYPE_2__ {size_t size; } ;
struct udl_device {int lost_pixels; TYPE_1__ urbs; } ;
struct drm_device {int dummy; } ;


 int BUG_ON (int) ;
 int DRM_ERROR (char*,int) ;
 int GFP_ATOMIC ;
 int atomic_set (int *,int) ;
 struct udl_device* to_udl (struct drm_device*) ;
 int udl_urb_completion (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;

int udl_submit_urb(struct drm_device *dev, struct urb *urb, size_t len)
{
 struct udl_device *udl = to_udl(dev);
 int ret;

 BUG_ON(len > udl->urbs.size);

 urb->transfer_buffer_length = len;
 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret) {
  udl_urb_completion(urb);
  atomic_set(&udl->lost_pixels, 1);
  DRM_ERROR("usb_submit_urb error %x\n", ret);
 }
 return ret;
}
