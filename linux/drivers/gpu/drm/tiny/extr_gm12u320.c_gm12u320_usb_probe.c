
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_8__ {int * funcs; void* max_height; void* min_height; void* max_width; void* min_width; } ;
struct drm_device {TYPE_4__ mode_config; struct gm12u320_device* dev_private; } ;
struct TYPE_7__ {int waitq; int lock; int work; } ;
struct gm12u320_device {int conn; int pipe; struct drm_device dev; TYPE_3__ fb_update; int udev; } ;
struct TYPE_5__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* GM12U320_HEIGHT ;
 void* GM12U320_USER_WIDTH ;
 int INIT_WORK (int *,int ) ;
 int drm_dev_init (struct drm_device*,int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int ) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_simple_display_pipe_init (struct drm_device*,int *,int *,int ,int ,int ,int *) ;
 int gm12u320_conn_init (struct gm12u320_device*) ;
 int gm12u320_drm_driver ;
 int gm12u320_fb_update_work ;
 int gm12u320_mode_config_funcs ;
 int gm12u320_pipe_formats ;
 int gm12u320_pipe_funcs ;
 int gm12u320_pipe_modifiers ;
 int gm12u320_set_ecomode (struct gm12u320_device*) ;
 int gm12u320_usb_alloc (struct gm12u320_device*) ;
 int init_waitqueue_head (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct gm12u320_device*) ;
 struct gm12u320_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int usb_set_intfdata (struct usb_interface*,struct drm_device*) ;

__attribute__((used)) static int gm12u320_usb_probe(struct usb_interface *interface,
         const struct usb_device_id *id)
{
 struct gm12u320_device *gm12u320;
 struct drm_device *dev;
 int ret;





 if (interface->cur_altsetting->desc.bInterfaceNumber != 0)
  return -ENODEV;

 gm12u320 = kzalloc(sizeof(*gm12u320), GFP_KERNEL);
 if (gm12u320 == ((void*)0))
  return -ENOMEM;

 gm12u320->udev = interface_to_usbdev(interface);
 INIT_WORK(&gm12u320->fb_update.work, gm12u320_fb_update_work);
 mutex_init(&gm12u320->fb_update.lock);
 init_waitqueue_head(&gm12u320->fb_update.waitq);

 dev = &gm12u320->dev;
 ret = drm_dev_init(dev, &gm12u320_drm_driver, &interface->dev);
 if (ret) {
  kfree(gm12u320);
  return ret;
 }
 dev->dev_private = gm12u320;

 drm_mode_config_init(dev);
 dev->mode_config.min_width = GM12U320_USER_WIDTH;
 dev->mode_config.max_width = GM12U320_USER_WIDTH;
 dev->mode_config.min_height = GM12U320_HEIGHT;
 dev->mode_config.max_height = GM12U320_HEIGHT;
 dev->mode_config.funcs = &gm12u320_mode_config_funcs;

 ret = gm12u320_usb_alloc(gm12u320);
 if (ret)
  goto err_put;

 ret = gm12u320_set_ecomode(gm12u320);
 if (ret)
  goto err_put;

 ret = gm12u320_conn_init(gm12u320);
 if (ret)
  goto err_put;

 ret = drm_simple_display_pipe_init(&gm12u320->dev,
        &gm12u320->pipe,
        &gm12u320_pipe_funcs,
        gm12u320_pipe_formats,
        ARRAY_SIZE(gm12u320_pipe_formats),
        gm12u320_pipe_modifiers,
        &gm12u320->conn);
 if (ret)
  goto err_put;

 drm_mode_config_reset(dev);

 usb_set_intfdata(interface, dev);
 ret = drm_dev_register(dev, 0);
 if (ret)
  goto err_put;

 drm_fbdev_generic_setup(dev, 0);

 return 0;

err_put:
 drm_dev_put(dev);
 return ret;
}
