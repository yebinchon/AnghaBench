
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hns_roce_v1_priv {int dummy; } ;
struct hns_roce_dev {int ib_dev; int priv; struct device* dev; struct platform_device* pdev; } ;


 int DMA_BIT_MASK (unsigned long long) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dma_set_mask_and_coherent (struct device*,int ) ;
 int hns_roce_dev ;
 int hns_roce_get_cfg (struct hns_roce_dev*) ;
 int hns_roce_init (struct hns_roce_dev*) ;
 struct hns_roce_dev* ib_alloc_device (int ,int ) ;
 int ib_dealloc_device (int *) ;
 int ib_dev ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct hns_roce_dev*) ;

__attribute__((used)) static int hns_roce_probe(struct platform_device *pdev)
{
 int ret;
 struct hns_roce_dev *hr_dev;
 struct device *dev = &pdev->dev;

 hr_dev = ib_alloc_device(hns_roce_dev, ib_dev);
 if (!hr_dev)
  return -ENOMEM;

 hr_dev->priv = kzalloc(sizeof(struct hns_roce_v1_priv), GFP_KERNEL);
 if (!hr_dev->priv) {
  ret = -ENOMEM;
  goto error_failed_kzalloc;
 }

 hr_dev->pdev = pdev;
 hr_dev->dev = dev;
 platform_set_drvdata(pdev, hr_dev);

 if (dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64ULL)) &&
     dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32ULL))) {
  dev_err(dev, "Not usable DMA addressing mode\n");
  ret = -EIO;
  goto error_failed_get_cfg;
 }

 ret = hns_roce_get_cfg(hr_dev);
 if (ret) {
  dev_err(dev, "Get Configuration failed!\n");
  goto error_failed_get_cfg;
 }

 ret = hns_roce_init(hr_dev);
 if (ret) {
  dev_err(dev, "RoCE engine init failed!\n");
  goto error_failed_get_cfg;
 }

 return 0;

error_failed_get_cfg:
 kfree(hr_dev->priv);

error_failed_kzalloc:
 ib_dealloc_device(&hr_dev->ib_dev);

 return ret;
}
