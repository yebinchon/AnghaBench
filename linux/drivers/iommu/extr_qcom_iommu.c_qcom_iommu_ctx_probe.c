
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct qcom_iommu_dev {struct qcom_iommu_ctx** ctxs; } ;
struct qcom_iommu_ctx {int asid; int base; struct device* dev; } ;
struct device {int of_node; int parent; } ;
struct platform_device {struct device dev; } ;


 int ARM_SMMU_CB_FSR ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 struct qcom_iommu_dev* dev_get_drvdata (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct qcom_iommu_ctx* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct qcom_iommu_ctx*) ;
 int get_asid (int ) ;
 int iommu_readl (struct qcom_iommu_ctx*,int ) ;
 int iommu_writel (struct qcom_iommu_ctx*,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct qcom_iommu_ctx*) ;
 int qcom_iommu_fault ;

__attribute__((used)) static int qcom_iommu_ctx_probe(struct platform_device *pdev)
{
 struct qcom_iommu_ctx *ctx;
 struct device *dev = &pdev->dev;
 struct qcom_iommu_dev *qcom_iommu = dev_get_drvdata(dev->parent);
 struct resource *res;
 int ret, irq;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = dev;
 platform_set_drvdata(pdev, ctx);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ctx->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(ctx->base))
  return PTR_ERR(ctx->base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -ENODEV;




 iommu_writel(ctx, ARM_SMMU_CB_FSR, iommu_readl(ctx, ARM_SMMU_CB_FSR));

 ret = devm_request_irq(dev, irq,
          qcom_iommu_fault,
          IRQF_SHARED,
          "qcom-iommu-fault",
          ctx);
 if (ret) {
  dev_err(dev, "failed to request IRQ %u\n", irq);
  return ret;
 }

 ret = get_asid(dev->of_node);
 if (ret < 0) {
  dev_err(dev, "missing reg property\n");
  return ret;
 }

 ctx->asid = ret;

 dev_dbg(dev, "found asid %u\n", ctx->asid);

 qcom_iommu->ctxs[ctx->asid - 1] = ctx;

 return 0;
}
