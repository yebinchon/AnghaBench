
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct panfrost_device {int * dev; int shrinker_list; int shrinker_lock; struct drm_device* ddev; struct platform_device* pdev; } ;
struct drm_device {struct panfrost_device* dev_private; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int dev_err (int *,char*) ;
 struct panfrost_device* devm_kzalloc (int *,int,int ) ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int mutex_init (int *) ;
 int panfrost_devfreq_fini (struct panfrost_device*) ;
 int panfrost_devfreq_init (struct panfrost_device*) ;
 int panfrost_device_fini (struct panfrost_device*) ;
 int panfrost_device_init (struct panfrost_device*) ;
 int panfrost_drm_driver ;
 int panfrost_gem_shrinker_init (struct drm_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panfrost_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int panfrost_probe(struct platform_device *pdev)
{
 struct panfrost_device *pfdev;
 struct drm_device *ddev;
 int err;

 pfdev = devm_kzalloc(&pdev->dev, sizeof(*pfdev), GFP_KERNEL);
 if (!pfdev)
  return -ENOMEM;

 pfdev->pdev = pdev;
 pfdev->dev = &pdev->dev;

 platform_set_drvdata(pdev, pfdev);


 ddev = drm_dev_alloc(&panfrost_drm_driver, &pdev->dev);
 if (IS_ERR(ddev))
  return PTR_ERR(ddev);

 ddev->dev_private = pfdev;
 pfdev->ddev = ddev;

 mutex_init(&pfdev->shrinker_lock);
 INIT_LIST_HEAD(&pfdev->shrinker_list);

 err = panfrost_device_init(pfdev);
 if (err) {
  if (err != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Fatal error during GPU init\n");
  goto err_out0;
 }

 err = panfrost_devfreq_init(pfdev);
 if (err) {
  if (err != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Fatal error during devfreq init\n");
  goto err_out1;
 }

 pm_runtime_set_active(pfdev->dev);
 pm_runtime_mark_last_busy(pfdev->dev);
 pm_runtime_enable(pfdev->dev);
 pm_runtime_set_autosuspend_delay(pfdev->dev, 50);
 pm_runtime_use_autosuspend(pfdev->dev);





 err = drm_dev_register(ddev, 0);
 if (err < 0)
  goto err_out2;

 panfrost_gem_shrinker_init(ddev);

 return 0;

err_out2:
 pm_runtime_disable(pfdev->dev);
 panfrost_devfreq_fini(pfdev);
err_out1:
 panfrost_device_fini(pfdev);
err_out0:
 drm_dev_put(ddev);
 return err;
}
