
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature_platform_data {int lock; } ;
struct dfl_feature {int dummy; } ;


 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 int dfl_fme_destroy_bridges (struct dfl_feature_platform_data*) ;
 int dfl_fme_destroy_mgr (struct dfl_feature_platform_data*) ;
 int dfl_fme_destroy_regions (struct dfl_feature_platform_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void pr_mgmt_uinit(struct platform_device *pdev,
     struct dfl_feature *feature)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);

 mutex_lock(&pdata->lock);

 dfl_fme_destroy_regions(pdata);
 dfl_fme_destroy_bridges(pdata);
 dfl_fme_destroy_mgr(pdata);
 mutex_unlock(&pdata->lock);
}
