
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dfl_feature {int dummy; } ;



 long ENODEV ;
 long fme_pr (struct platform_device*,unsigned long) ;

__attribute__((used)) static long fme_pr_ioctl(struct platform_device *pdev,
    struct dfl_feature *feature,
    unsigned int cmd, unsigned long arg)
{
 long ret;

 switch (cmd) {
 case 128:
  ret = fme_pr(pdev, arg);
  break;
 default:
  ret = -ENODEV;
 }

 return ret;
}
