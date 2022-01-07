
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ib_device* device; } ;
struct mlx4_ib_mr {int * pages; int page_map_size; int page_map; TYPE_1__ ibmr; } ;
struct TYPE_4__ {int parent; } ;
struct ib_device {TYPE_2__ dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_page (unsigned long) ;

__attribute__((used)) static void
mlx4_free_priv_pages(struct mlx4_ib_mr *mr)
{
 if (mr->pages) {
  struct ib_device *device = mr->ibmr.device;

  dma_unmap_single(device->dev.parent, mr->page_map,
     mr->page_map_size, DMA_TO_DEVICE);
  free_page((unsigned long)mr->pages);
  mr->pages = ((void*)0);
 }
}
