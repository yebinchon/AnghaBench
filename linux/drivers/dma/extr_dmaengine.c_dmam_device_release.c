
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int dummy; } ;
struct device {int dummy; } ;


 int dma_async_device_unregister (struct dma_device*) ;

__attribute__((used)) static void dmam_device_release(struct device *dev, void *res)
{
 struct dma_device *device;

 device = *(struct dma_device **)res;
 dma_async_device_unregister(device);
}
