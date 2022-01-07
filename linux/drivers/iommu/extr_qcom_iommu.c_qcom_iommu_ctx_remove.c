
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_iommu_dev {int ** ctxs; } ;
struct qcom_iommu_ctx {int asid; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct qcom_iommu_dev* dev_get_drvdata (int ) ;
 struct qcom_iommu_ctx* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int qcom_iommu_ctx_remove(struct platform_device *pdev)
{
 struct qcom_iommu_dev *qcom_iommu = dev_get_drvdata(pdev->dev.parent);
 struct qcom_iommu_ctx *ctx = platform_get_drvdata(pdev);

 platform_set_drvdata(pdev, ((void*)0));

 qcom_iommu->ctxs[ctx->asid - 1] = ((void*)0);

 return 0;
}
