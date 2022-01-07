
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct bochs_device* dev_private; } ;
struct bochs_device {struct drm_device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bochs_hw_init (struct drm_device*) ;
 int bochs_kms_init (struct bochs_device*) ;
 int bochs_mm_init (struct bochs_device*) ;
 int bochs_unload (struct drm_device*) ;
 struct bochs_device* kzalloc (int,int ) ;

__attribute__((used)) static int bochs_load(struct drm_device *dev)
{
 struct bochs_device *bochs;
 int ret;

 bochs = kzalloc(sizeof(*bochs), GFP_KERNEL);
 if (bochs == ((void*)0))
  return -ENOMEM;
 dev->dev_private = bochs;
 bochs->dev = dev;

 ret = bochs_hw_init(dev);
 if (ret)
  goto err;

 ret = bochs_mm_init(bochs);
 if (ret)
  goto err;

 ret = bochs_kms_init(bochs);
 if (ret)
  goto err;

 return 0;

err:
 bochs_unload(dev);
 return ret;
}
