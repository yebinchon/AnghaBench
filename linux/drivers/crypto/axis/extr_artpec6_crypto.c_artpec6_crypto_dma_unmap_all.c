
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct artpec6_crypto_req_common {struct artpec6_crypto_dma_descriptors* dma; } ;
struct artpec6_crypto_dma_map {int dir; int size; int dma_addr; } ;
struct artpec6_crypto_dma_descriptors {int map_count; struct artpec6_crypto_dma_map* maps; } ;


 struct device* artpec6_crypto_dev ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;

__attribute__((used)) static void
artpec6_crypto_dma_unmap_all(struct artpec6_crypto_req_common *common)
{
 struct artpec6_crypto_dma_descriptors *dma = common->dma;
 struct device *dev = artpec6_crypto_dev;
 int i;

 for (i = 0; i < dma->map_count; i++) {
  struct artpec6_crypto_dma_map *map = &dma->maps[i];

  dma_unmap_page(dev, map->dma_addr, map->size, map->dir);
 }

 dma->map_count = 0;
}
