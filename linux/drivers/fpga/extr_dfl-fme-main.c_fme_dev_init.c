
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_fme {struct dfl_feature_platform_data* pdata; } ;
struct dfl_feature_platform_data {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 struct dfl_fme* devm_kzalloc (int *,int,int ) ;
 int dfl_fpga_pdata_set_private (struct dfl_feature_platform_data*,struct dfl_fme*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fme_dev_init(struct platform_device *pdev)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct dfl_fme *fme;

 fme = devm_kzalloc(&pdev->dev, sizeof(*fme), GFP_KERNEL);
 if (!fme)
  return -ENOMEM;

 fme->pdata = pdata;

 mutex_lock(&pdata->lock);
 dfl_fpga_pdata_set_private(pdata, fme);
 mutex_unlock(&pdata->lock);

 return 0;
}
