
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devres_add (int ,void*) ;
 void* devres_alloc (int ,int,int ) ;
 int devres_free (void*) ;
 int dma_async_device_register (struct dma_device*) ;
 int dmam_device_release ;

int dmaenginem_async_device_register(struct dma_device *device)
{
 void *p;
 int ret;

 p = devres_alloc(dmam_device_release, sizeof(void *), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 ret = dma_async_device_register(device);
 if (!ret) {
  *(struct dma_device **)p = device;
  devres_add(device->dev, p);
 } else {
  devres_free(p);
 }

 return ret;
}
