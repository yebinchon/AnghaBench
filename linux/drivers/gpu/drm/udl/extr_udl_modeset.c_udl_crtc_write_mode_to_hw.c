
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ transfer_buffer; } ;
struct udl_device {int mode_buf_len; int mode_buf; } ;
struct drm_device {struct udl_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DRM_DEBUG (char*,int ) ;
 int ENOMEM ;
 int memcpy (char*,int ,int ) ;
 struct urb* udl_get_urb (struct drm_device*) ;
 int udl_submit_urb (struct drm_device*,struct urb*,int ) ;

__attribute__((used)) static int udl_crtc_write_mode_to_hw(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct udl_device *udl = dev->dev_private;
 struct urb *urb;
 char *buf;
 int retval;

 urb = udl_get_urb(dev);
 if (!urb)
  return -ENOMEM;

 buf = (char *)urb->transfer_buffer;

 memcpy(buf, udl->mode_buf, udl->mode_buf_len);
 retval = udl_submit_urb(dev, urb, udl->mode_buf_len);
 DRM_DEBUG("write mode info %d\n", udl->mode_buf_len);
 return retval;
}
