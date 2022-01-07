
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_private {struct drm_device* drm_dev; } ;
struct drm_device {int dev; void* dev_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int ,struct drm_device*) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 struct sti_private* kzalloc (int,int ) ;
 int sti_mode_config_init (struct drm_device*) ;

__attribute__((used)) static int sti_init(struct drm_device *ddev)
{
 struct sti_private *private;

 private = kzalloc(sizeof(*private), GFP_KERNEL);
 if (!private)
  return -ENOMEM;

 ddev->dev_private = (void *)private;
 dev_set_drvdata(ddev->dev, ddev);
 private->drm_dev = ddev;

 drm_mode_config_init(ddev);

 sti_mode_config_init(ddev);

 drm_kms_helper_poll_init(ddev);

 return 0;
}
