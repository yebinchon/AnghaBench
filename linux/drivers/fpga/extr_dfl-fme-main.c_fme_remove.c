
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int dfl_fpga_dev_feature_uinit (struct platform_device*) ;
 int dfl_fpga_dev_ops_unregister (struct platform_device*) ;
 int fme_dev_destroy (struct platform_device*) ;

__attribute__((used)) static int fme_remove(struct platform_device *pdev)
{
 dfl_fpga_dev_ops_unregister(pdev);
 dfl_fpga_dev_feature_uinit(pdev);
 fme_dev_destroy(pdev);

 return 0;
}
