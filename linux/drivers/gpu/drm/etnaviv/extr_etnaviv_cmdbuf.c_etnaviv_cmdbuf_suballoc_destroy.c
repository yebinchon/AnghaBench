
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_cmdbuf_suballoc {int paddr; int vaddr; int dev; } ;


 int SUBALLOC_SIZE ;
 int dma_free_wc (int ,int ,int ,int ) ;
 int kfree (struct etnaviv_cmdbuf_suballoc*) ;

void etnaviv_cmdbuf_suballoc_destroy(struct etnaviv_cmdbuf_suballoc *suballoc)
{
 dma_free_wc(suballoc->dev, SUBALLOC_SIZE, suballoc->vaddr,
      suballoc->paddr);
 kfree(suballoc);
}
