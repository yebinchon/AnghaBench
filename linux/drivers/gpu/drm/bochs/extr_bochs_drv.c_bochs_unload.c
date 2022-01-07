
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct bochs_device* dev_private; } ;
struct bochs_device {int dummy; } ;


 int bochs_hw_fini (struct drm_device*) ;
 int bochs_kms_fini (struct bochs_device*) ;
 int bochs_mm_fini (struct bochs_device*) ;
 int kfree (struct bochs_device*) ;

__attribute__((used)) static void bochs_unload(struct drm_device *dev)
{
 struct bochs_device *bochs = dev->dev_private;

 bochs_kms_fini(bochs);
 bochs_mm_fini(bochs);
 bochs_hw_fini(dev);
 kfree(bochs);
 dev->dev_private = ((void*)0);
}
