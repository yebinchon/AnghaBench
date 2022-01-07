
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
struct artpec6_crypto_req_common {struct artpec6_crypto_dma_descriptors* dma; } ;
struct artpec6_crypto_dma_map {size_t size; int dir; int dma_addr; } ;
struct artpec6_crypto_dma_descriptors {scalar_t__ map_count; struct artpec6_crypto_dma_map* maps; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 scalar_t__ ARRAY_SIZE (struct artpec6_crypto_dma_map*) ;
 int ENOMEM ;
 struct device* artpec6_crypto_dev ;
 int dma_map_page (struct device*,struct page*,size_t,size_t,int) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;

__attribute__((used)) static int artpec6_crypto_dma_map_page(struct artpec6_crypto_req_common *common,
          struct page *page, size_t offset,
          size_t size,
          enum dma_data_direction dir,
          dma_addr_t *dma_addr_out)
{
 struct artpec6_crypto_dma_descriptors *dma = common->dma;
 struct device *dev = artpec6_crypto_dev;
 struct artpec6_crypto_dma_map *map;
 dma_addr_t dma_addr;

 *dma_addr_out = 0;

 if (dma->map_count >= ARRAY_SIZE(dma->maps))
  return -ENOMEM;

 dma_addr = dma_map_page(dev, page, offset, size, dir);
 if (dma_mapping_error(dev, dma_addr))
  return -ENOMEM;

 map = &dma->maps[dma->map_count++];
 map->size = size;
 map->dma_addr = dma_addr;
 map->dir = dir;

 *dma_addr_out = dma_addr;

 return 0;
}
