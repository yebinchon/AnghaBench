
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_14__ {TYPE_1__* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct ipmmu_vmsa_device {int iommu; TYPE_2__* features; int ctx; struct ipmmu_vmsa_device* root; int num_ctx; int base; int utlb_ctx; int lock; TYPE_3__* dev; } ;
struct TYPE_13__ {int has_cache_leaf_nodes; scalar_t__ reserved_context; int number_of_contexts; scalar_t__ use_ns_alias_offset; int num_utlbs; } ;
struct TYPE_12__ {int fwnode; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IM_NS_ALIAS_OFFSET ;
 int IORESOURCE_MEM ;
 int IPMMU_CTX_INVALID ;
 int IPMMU_CTX_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int bitmap_zero (int ,int ) ;
 int bus_set_iommu (int *,int *) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_info (TYPE_3__*,char*) ;
 int dev_name (TYPE_3__*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct ipmmu_vmsa_device* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,int,int ,int ,int ,struct ipmmu_vmsa_device*) ;
 int dma_set_mask_and_coherent (TYPE_3__*,int ) ;
 int iommu_device_register (int *) ;
 int iommu_device_set_fwnode (int *,int *) ;
 int iommu_device_set_ops (int *,int *) ;
 int iommu_device_sysfs_add (int *,TYPE_3__*,int *,int ) ;
 int iommu_present (int *) ;
 int ipmmu_device_reset (struct ipmmu_vmsa_device*) ;
 struct ipmmu_vmsa_device* ipmmu_find_root () ;
 int ipmmu_irq ;
 scalar_t__ ipmmu_is_root (struct ipmmu_vmsa_device*) ;
 int ipmmu_ops ;
 int memset (int ,int ,int ) ;
 int min (int ,int ) ;
 TYPE_2__* of_device_get_match_data (TYPE_3__*) ;
 int of_find_property (TYPE_1__*,char*,int *) ;
 int platform_bus_type ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ipmmu_vmsa_device*) ;
 int set_bit (int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ipmmu_probe(struct platform_device *pdev)
{
 struct ipmmu_vmsa_device *mmu;
 struct resource *res;
 int irq;
 int ret;

 mmu = devm_kzalloc(&pdev->dev, sizeof(*mmu), GFP_KERNEL);
 if (!mmu) {
  dev_err(&pdev->dev, "cannot allocate device data\n");
  return -ENOMEM;
 }

 mmu->dev = &pdev->dev;
 spin_lock_init(&mmu->lock);
 bitmap_zero(mmu->ctx, IPMMU_CTX_MAX);
 mmu->features = of_device_get_match_data(&pdev->dev);
 memset(mmu->utlb_ctx, IPMMU_CTX_INVALID, mmu->features->num_utlbs);
 dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(40));


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mmu->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mmu->base))
  return PTR_ERR(mmu->base);
 if (mmu->features->use_ns_alias_offset)
  mmu->base += IM_NS_ALIAS_OFFSET;

 mmu->num_ctx = min(IPMMU_CTX_MAX, mmu->features->number_of_contexts);





 if (!mmu->features->has_cache_leaf_nodes ||
     !of_find_property(pdev->dev.of_node, "renesas,ipmmu-main", ((void*)0)))
  mmu->root = mmu;
 else
  mmu->root = ipmmu_find_root();




 if (!mmu->root)
  return -EPROBE_DEFER;


 if (ipmmu_is_root(mmu)) {
  irq = platform_get_irq(pdev, 0);
  if (irq < 0)
   return irq;

  ret = devm_request_irq(&pdev->dev, irq, ipmmu_irq, 0,
           dev_name(&pdev->dev), mmu);
  if (ret < 0) {
   dev_err(&pdev->dev, "failed to request IRQ %d\n", irq);
   return ret;
  }

  ipmmu_device_reset(mmu);

  if (mmu->features->reserved_context) {
   dev_info(&pdev->dev, "IPMMU context 0 is reserved\n");
   set_bit(0, mmu->ctx);
  }
 }






 if (!mmu->features->has_cache_leaf_nodes || !ipmmu_is_root(mmu)) {
  ret = iommu_device_sysfs_add(&mmu->iommu, &pdev->dev, ((void*)0),
          dev_name(&pdev->dev));
  if (ret)
   return ret;

  iommu_device_set_ops(&mmu->iommu, &ipmmu_ops);
  iommu_device_set_fwnode(&mmu->iommu,
     &pdev->dev.of_node->fwnode);

  ret = iommu_device_register(&mmu->iommu);
  if (ret)
   return ret;





 }







 platform_set_drvdata(pdev, mmu);

 return 0;
}
