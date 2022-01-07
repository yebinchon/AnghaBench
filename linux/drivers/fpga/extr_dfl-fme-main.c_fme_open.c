
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct inode {int dummy; } ;
struct file {struct dfl_feature_platform_data* private_data; } ;
struct dfl_feature_platform_data {int dummy; } ;


 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (int *,char*) ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 int dfl_feature_dev_use_begin (struct dfl_feature_platform_data*) ;
 struct platform_device* dfl_fpga_inode_to_feature_dev (struct inode*) ;

__attribute__((used)) static int fme_open(struct inode *inode, struct file *filp)
{
 struct platform_device *fdev = dfl_fpga_inode_to_feature_dev(inode);
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&fdev->dev);
 int ret;

 if (WARN_ON(!pdata))
  return -ENODEV;

 ret = dfl_feature_dev_use_begin(pdata);
 if (ret)
  return ret;

 dev_dbg(&fdev->dev, "Device File Open\n");
 filp->private_data = pdata;

 return 0;
}
