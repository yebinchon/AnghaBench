
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature {int dummy; } ;



 long EINVAL ;
 long ENODEV ;
 int dev_dbg (int *,char*,unsigned int) ;
 long port_reset (struct platform_device*) ;

__attribute__((used)) static long
port_hdr_ioctl(struct platform_device *pdev, struct dfl_feature *feature,
        unsigned int cmd, unsigned long arg)
{
 long ret;

 switch (cmd) {
 case 128:
  if (!arg)
   ret = port_reset(pdev);
  else
   ret = -EINVAL;
  break;
 default:
  dev_dbg(&pdev->dev, "%x cmd not handled", cmd);
  ret = -ENODEV;
 }

 return ret;
}
