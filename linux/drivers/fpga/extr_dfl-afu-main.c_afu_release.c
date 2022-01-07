
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct inode {int dummy; } ;
struct file {struct platform_device* private_data; } ;
struct dfl_feature_platform_data {int lock; } ;


 int __port_reset (struct platform_device*) ;
 int afu_dma_region_destroy (struct dfl_feature_platform_data*) ;
 int dev_dbg (int *,char*) ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 int dfl_feature_dev_use_end (struct dfl_feature_platform_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int afu_release(struct inode *inode, struct file *filp)
{
 struct platform_device *pdev = filp->private_data;
 struct dfl_feature_platform_data *pdata;

 dev_dbg(&pdev->dev, "Device File Release\n");

 pdata = dev_get_platdata(&pdev->dev);

 mutex_lock(&pdata->lock);
 __port_reset(pdev);
 afu_dma_region_destroy(pdata);
 mutex_unlock(&pdata->lock);

 dfl_feature_dev_use_end(pdata);

 return 0;
}
