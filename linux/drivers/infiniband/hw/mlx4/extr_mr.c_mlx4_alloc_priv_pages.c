
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlx4_ib_mr {int * pages; int page_map; int page_map_size; } ;
struct TYPE_2__ {int parent; } ;
struct ib_device {TYPE_1__ dev; } ;
typedef int __be64 ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX4_MR_PAGES_ALIGN ;
 int dma_map_single (int ,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int roundup (int,int ) ;

__attribute__((used)) static int
mlx4_alloc_priv_pages(struct ib_device *device,
        struct mlx4_ib_mr *mr,
        int max_pages)
{
 int ret;






 mr->page_map_size = roundup(max_pages * sizeof(u64),
        MLX4_MR_PAGES_ALIGN);


 mr->pages = (__be64 *)get_zeroed_page(GFP_KERNEL);
 if (!mr->pages)
  return -ENOMEM;

 mr->page_map = dma_map_single(device->dev.parent, mr->pages,
          mr->page_map_size, DMA_TO_DEVICE);

 if (dma_mapping_error(device->dev.parent, mr->page_map)) {
  ret = -ENOMEM;
  goto err;
 }

 return 0;

err:
 free_page((unsigned long)mr->pages);
 return ret;
}
