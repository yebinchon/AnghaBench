
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lima_device {int id; struct drm_device* ddev; int * dev; struct platform_device* pdev; } ;
struct drm_device {struct lima_device* dev_private; } ;
typedef enum lima_gpu_id { ____Placeholder_lima_gpu_id } lima_gpu_id ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 struct lima_device* devm_kzalloc (int *,int,int ) ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int lima_device_fini (struct lima_device*) ;
 int lima_device_init (struct lima_device*) ;
 int lima_drm_driver ;
 int lima_sched_slab_fini () ;
 int lima_sched_slab_init () ;
 scalar_t__ of_device_get_match_data (int *) ;
 int platform_set_drvdata (struct platform_device*,struct lima_device*) ;

__attribute__((used)) static int lima_pdev_probe(struct platform_device *pdev)
{
 struct lima_device *ldev;
 struct drm_device *ddev;
 int err;

 err = lima_sched_slab_init();
 if (err)
  return err;

 ldev = devm_kzalloc(&pdev->dev, sizeof(*ldev), GFP_KERNEL);
 if (!ldev) {
  err = -ENOMEM;
  goto err_out0;
 }

 ldev->pdev = pdev;
 ldev->dev = &pdev->dev;
 ldev->id = (enum lima_gpu_id)of_device_get_match_data(&pdev->dev);

 platform_set_drvdata(pdev, ldev);


 ddev = drm_dev_alloc(&lima_drm_driver, &pdev->dev);
 if (IS_ERR(ddev))
  return PTR_ERR(ddev);

 ddev->dev_private = ldev;
 ldev->ddev = ddev;

 err = lima_device_init(ldev);
 if (err)
  goto err_out1;





 err = drm_dev_register(ddev, 0);
 if (err < 0)
  goto err_out2;

 return 0;

err_out2:
 lima_device_fini(ldev);
err_out1:
 drm_dev_put(ddev);
err_out0:
 lima_sched_slab_fini();
 return err;
}
