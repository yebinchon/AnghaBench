
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int THIS_MODULE ;
 int dfl_fpga_dev_feature_init (struct platform_device*,int ) ;
 int dfl_fpga_dev_feature_uinit (struct platform_device*) ;
 int dfl_fpga_dev_ops_register (struct platform_device*,int *,int ) ;
 int fme_dev_destroy (struct platform_device*) ;
 int fme_dev_init (struct platform_device*) ;
 int fme_feature_drvs ;
 int fme_fops ;

__attribute__((used)) static int fme_probe(struct platform_device *pdev)
{
 int ret;

 ret = fme_dev_init(pdev);
 if (ret)
  goto exit;

 ret = dfl_fpga_dev_feature_init(pdev, fme_feature_drvs);
 if (ret)
  goto dev_destroy;

 ret = dfl_fpga_dev_ops_register(pdev, &fme_fops, THIS_MODULE);
 if (ret)
  goto feature_uinit;

 return 0;

feature_uinit:
 dfl_fpga_dev_feature_uinit(pdev);
dev_destroy:
 fme_dev_destroy(pdev);
exit:
 return ret;
}
