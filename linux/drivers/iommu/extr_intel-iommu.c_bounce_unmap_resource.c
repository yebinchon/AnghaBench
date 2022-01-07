
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int bounce_unmap_single (struct device*,int ,size_t,int,unsigned long) ;

__attribute__((used)) static void
bounce_unmap_resource(struct device *dev, dma_addr_t dev_addr, size_t size,
        enum dma_data_direction dir, unsigned long attrs)
{
 bounce_unmap_single(dev, dev_addr, size, dir, attrs);
}
