
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature {int dummy; } ;


 int afu_port_err_mask (int *,int) ;

__attribute__((used)) static void port_err_uinit(struct platform_device *pdev,
      struct dfl_feature *feature)
{
 afu_port_err_mask(&pdev->dev, 1);
}
