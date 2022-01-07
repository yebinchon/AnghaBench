
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct komeda_product_data {int product_id; TYPE_1__* (* identify ) (int *,TYPE_2__*) ;} ;
struct TYPE_4__ {int core_id; } ;
struct komeda_dev {int * iommu; TYPE_1__* funcs; struct device* dev; int dma_parms; TYPE_2__ chip; int * reg_base; int * aclk; int lock; } ;
struct device {int kobj; int * dma_parms; } ;
struct TYPE_3__ {int (* enum_resources ) (struct komeda_dev*) ;int (* connect_iommu ) (struct komeda_dev*) ;int (* init_format_table ) (struct komeda_dev*) ;} ;


 int DMA_BIT_MASK (int) ;
 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,...) ;
 int ENODEV ;
 int ENOMEM ;
 struct komeda_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int MALIDP_CORE_ID_MAJOR (int ) ;
 int MALIDP_CORE_ID_MINOR (int ) ;
 int MALIDP_CORE_ID_PRODUCT_ID (int ) ;
 int PTR_ERR (int *) ;
 int clk_prepare_enable (int *) ;
 int * devm_clk_get (struct device*,char*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 struct komeda_dev* devm_kzalloc (struct device*,int,int ) ;
 int dma_set_max_seg_size (struct device*,int ) ;
 int * iommu_get_domain_for_dev (struct device*) ;
 int komeda_assemble_pipelines (struct komeda_dev*) ;
 int komeda_debugfs_init (struct komeda_dev*) ;
 int komeda_dev_destroy (struct komeda_dev*) ;
 int komeda_parse_dt (struct device*,struct komeda_dev*) ;
 int komeda_product_match (struct komeda_dev*,int ) ;
 int komeda_sysfs_attr_group ;
 int mutex_init (int *) ;
 struct komeda_product_data* of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 TYPE_1__* stub1 (int *,TYPE_2__*) ;
 int stub2 (struct komeda_dev*) ;
 int stub3 (struct komeda_dev*) ;
 int stub4 (struct komeda_dev*) ;
 int sysfs_create_group (int *,int *) ;
 struct platform_device* to_platform_device (struct device*) ;

struct komeda_dev *komeda_dev_create(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 const struct komeda_product_data *product;
 struct komeda_dev *mdev;
 struct resource *io_res;
 int err = 0;

 product = of_device_get_match_data(dev);
 if (!product)
  return ERR_PTR(-ENODEV);

 io_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!io_res) {
  DRM_ERROR("No registers defined.\n");
  return ERR_PTR(-ENODEV);
 }

 mdev = devm_kzalloc(dev, sizeof(*mdev), GFP_KERNEL);
 if (!mdev)
  return ERR_PTR(-ENOMEM);

 mutex_init(&mdev->lock);

 mdev->dev = dev;
 mdev->reg_base = devm_ioremap_resource(dev, io_res);
 if (IS_ERR(mdev->reg_base)) {
  DRM_ERROR("Map register space failed.\n");
  err = PTR_ERR(mdev->reg_base);
  mdev->reg_base = ((void*)0);
  goto err_cleanup;
 }

 mdev->aclk = devm_clk_get(dev, "aclk");
 if (IS_ERR(mdev->aclk)) {
  DRM_ERROR("Get engine clk failed.\n");
  err = PTR_ERR(mdev->aclk);
  mdev->aclk = ((void*)0);
  goto err_cleanup;
 }

 clk_prepare_enable(mdev->aclk);

 mdev->funcs = product->identify(mdev->reg_base, &mdev->chip);
 if (!komeda_product_match(mdev, product->product_id)) {
  DRM_ERROR("DT configured %x mismatch with real HW %x.\n",
     product->product_id,
     MALIDP_CORE_ID_PRODUCT_ID(mdev->chip.core_id));
  err = -ENODEV;
  goto err_cleanup;
 }

 DRM_INFO("Found ARM Mali-D%x version r%dp%d\n",
   MALIDP_CORE_ID_PRODUCT_ID(mdev->chip.core_id),
   MALIDP_CORE_ID_MAJOR(mdev->chip.core_id),
   MALIDP_CORE_ID_MINOR(mdev->chip.core_id));

 mdev->funcs->init_format_table(mdev);

 err = mdev->funcs->enum_resources(mdev);
 if (err) {
  DRM_ERROR("enumerate display resource failed.\n");
  goto err_cleanup;
 }

 err = komeda_parse_dt(dev, mdev);
 if (err) {
  DRM_ERROR("parse device tree failed.\n");
  goto err_cleanup;
 }

 err = komeda_assemble_pipelines(mdev);
 if (err) {
  DRM_ERROR("assemble display pipelines failed.\n");
  goto err_cleanup;
 }

 dev->dma_parms = &mdev->dma_parms;
 dma_set_max_seg_size(dev, DMA_BIT_MASK(32));

 mdev->iommu = iommu_get_domain_for_dev(mdev->dev);
 if (!mdev->iommu)
  DRM_INFO("continue without IOMMU support!\n");

 if (mdev->iommu && mdev->funcs->connect_iommu) {
  err = mdev->funcs->connect_iommu(mdev);
  if (err) {
   mdev->iommu = ((void*)0);
   goto err_cleanup;
  }
 }

 err = sysfs_create_group(&dev->kobj, &komeda_sysfs_attr_group);
 if (err) {
  DRM_ERROR("create sysfs group failed.\n");
  goto err_cleanup;
 }





 return mdev;

err_cleanup:
 komeda_dev_destroy(mdev);
 return ERR_PTR(err);
}
