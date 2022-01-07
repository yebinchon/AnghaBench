
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_data {int cmdlist_dma_attrs; scalar_t__ cmdlist_pool; scalar_t__ cmdlist_pool_virt; int drm_dev; int cmdlist_node; } ;


 int G2D_CMDLIST_POOL_SIZE ;
 int dma_free_attrs (int ,int ,scalar_t__,scalar_t__,int ) ;
 int kfree (int ) ;
 int to_dma_dev (int ) ;

__attribute__((used)) static void g2d_fini_cmdlist(struct g2d_data *g2d)
{
 kfree(g2d->cmdlist_node);

 if (g2d->cmdlist_pool_virt && g2d->cmdlist_pool) {
  dma_free_attrs(to_dma_dev(g2d->drm_dev),
    G2D_CMDLIST_POOL_SIZE,
    g2d->cmdlist_pool_virt,
    g2d->cmdlist_pool, g2d->cmdlist_dma_attrs);
 }
}
