
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature_platform_data {int dummy; } ;
struct dfl_feature {int dummy; } ;




 long ENODEV ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 long fme_hdr_ioctl_assign_port (struct dfl_feature_platform_data*,unsigned long) ;
 long fme_hdr_ioctl_release_port (struct dfl_feature_platform_data*,unsigned long) ;

__attribute__((used)) static long fme_hdr_ioctl(struct platform_device *pdev,
     struct dfl_feature *feature,
     unsigned int cmd, unsigned long arg)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&pdev->dev);

 switch (cmd) {
 case 128:
  return fme_hdr_ioctl_release_port(pdata, arg);
 case 129:
  return fme_hdr_ioctl_assign_port(pdata, arg);
 }

 return -ENODEV;
}
