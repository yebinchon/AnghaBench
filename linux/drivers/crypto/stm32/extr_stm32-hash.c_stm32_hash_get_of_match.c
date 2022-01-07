
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_dev {scalar_t__ dma_maxburst; int pdata; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int of_device_get_match_data (struct device*) ;
 scalar_t__ of_property_read_u32 (int ,char*,scalar_t__*) ;

__attribute__((used)) static int stm32_hash_get_of_match(struct stm32_hash_dev *hdev,
       struct device *dev)
{
 hdev->pdata = of_device_get_match_data(dev);
 if (!hdev->pdata) {
  dev_err(dev, "no compatible OF match\n");
  return -EINVAL;
 }

 if (of_property_read_u32(dev->of_node, "dma-maxburst",
     &hdev->dma_maxburst)) {
  dev_info(dev, "dma-maxburst not specified, using 0\n");
  hdev->dma_maxburst = 0;
 }

 return 0;
}
