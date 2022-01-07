
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidi_context {int lock; int timer; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int component_add (struct device*,int *) ;
 int dev_attr_connection ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 struct vidi_context* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct vidi_context*) ;
 int timer_setup (int *,int ,int ) ;
 int vidi_component_ops ;
 int vidi_fake_vblank_timer ;

__attribute__((used)) static int vidi_probe(struct platform_device *pdev)
{
 struct vidi_context *ctx;
 struct device *dev = &pdev->dev;
 int ret;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = dev;

 timer_setup(&ctx->timer, vidi_fake_vblank_timer, 0);

 mutex_init(&ctx->lock);

 platform_set_drvdata(pdev, ctx);

 ret = device_create_file(dev, &dev_attr_connection);
 if (ret < 0) {
  DRM_DEV_ERROR(dev,
         "failed to create connection sysfs.\n");
  return ret;
 }

 ret = component_add(dev, &vidi_component_ops);
 if (ret)
  goto err_remove_file;

 return ret;

err_remove_file:
 device_remove_file(dev, &dev_attr_connection);

 return ret;
}
