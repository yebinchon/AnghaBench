
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_dev {int ibdev; TYPE_1__* pdev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int __GFP_ZERO ;
 void* alloc_pages_exact (size_t,int) ;
 int dma_map_single (int *,void*,size_t,int) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int free_pages_exact (void*,size_t) ;
 int ibdev_err (int *,char*) ;

__attribute__((used)) static void *efa_zalloc_mapped(struct efa_dev *dev, dma_addr_t *dma_addr,
          size_t size, enum dma_data_direction dir)
{
 void *addr;

 addr = alloc_pages_exact(size, GFP_KERNEL | __GFP_ZERO);
 if (!addr)
  return ((void*)0);

 *dma_addr = dma_map_single(&dev->pdev->dev, addr, size, dir);
 if (dma_mapping_error(&dev->pdev->dev, *dma_addr)) {
  ibdev_err(&dev->ibdev, "Failed to map DMA address\n");
  free_pages_exact(addr, size);
  return ((void*)0);
 }

 return addr;
}
