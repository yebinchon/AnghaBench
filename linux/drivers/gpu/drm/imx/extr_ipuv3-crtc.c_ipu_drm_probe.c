
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int platform_data; } ;
struct platform_device {struct device dev; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int component_add (struct device*,int *) ;
 int dma_set_coherent_mask (struct device*,int ) ;
 int ipu_crtc_ops ;

__attribute__((used)) static int ipu_drm_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int ret;

 if (!dev->platform_data)
  return -EINVAL;

 ret = dma_set_coherent_mask(dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;

 return component_add(dev, &ipu_crtc_ops);
}
