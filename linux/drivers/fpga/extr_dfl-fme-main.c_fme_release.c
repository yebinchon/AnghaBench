
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct inode {int dummy; } ;
struct file {struct dfl_feature_platform_data* private_data; } ;
struct dfl_feature_platform_data {struct platform_device* dev; } ;


 int dev_dbg (int *,char*) ;
 int dfl_feature_dev_use_end (struct dfl_feature_platform_data*) ;

__attribute__((used)) static int fme_release(struct inode *inode, struct file *filp)
{
 struct dfl_feature_platform_data *pdata = filp->private_data;
 struct platform_device *pdev = pdata->dev;

 dev_dbg(&pdev->dev, "Device File Release\n");
 dfl_feature_dev_use_end(pdata);

 return 0;
}
