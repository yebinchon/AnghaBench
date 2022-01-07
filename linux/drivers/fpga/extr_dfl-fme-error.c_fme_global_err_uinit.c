
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_feature {int dummy; } ;


 int fme_err_mask (int *,int) ;

__attribute__((used)) static void fme_global_err_uinit(struct platform_device *pdev,
     struct dfl_feature *feature)
{
 fme_err_mask(&pdev->dev, 1);
}
