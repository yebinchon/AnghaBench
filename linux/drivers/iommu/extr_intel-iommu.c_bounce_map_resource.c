
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * dma_mask; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int bounce_map_single (struct device*,int ,size_t,int,unsigned long,int ) ;

__attribute__((used)) static dma_addr_t
bounce_map_resource(struct device *dev, phys_addr_t phys_addr, size_t size,
      enum dma_data_direction dir, unsigned long attrs)
{
 return bounce_map_single(dev, phys_addr, size,
     dir, attrs, *dev->dma_mask);
}
