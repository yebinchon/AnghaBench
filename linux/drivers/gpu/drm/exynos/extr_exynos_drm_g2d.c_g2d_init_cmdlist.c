
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_data {int cmdlist_dma_attrs; scalar_t__ cmdlist_pool; scalar_t__ cmdlist_pool_virt; int drm_dev; int free_cmdlist; struct device* dev; } ;
struct g2d_buf_info {int * reg_types; } ;
struct g2d_cmdlist_node {int list; struct g2d_buf_info buf_info; scalar_t__ dma_addr; scalar_t__ cmdlist; } ;
struct device {int dummy; } ;


 int DMA_ATTR_WRITE_COMBINE ;
 int ENOMEM ;
 int G2D_CMDLIST_NUM ;
 int G2D_CMDLIST_POOL_SIZE ;
 int G2D_CMDLIST_SIZE ;
 int GFP_KERNEL ;
 unsigned int MAX_REG_TYPE_NR ;
 int REG_TYPE_NONE ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dma_alloc_attrs (int ,int ,scalar_t__*,int ,int ) ;
 int dma_free_attrs (int ,int ,scalar_t__,scalar_t__,int ) ;
 struct g2d_cmdlist_node* kcalloc (int,int,int ) ;
 int list_add_tail (int *,int *) ;
 int to_dma_dev (int ) ;

__attribute__((used)) static int g2d_init_cmdlist(struct g2d_data *g2d)
{
 struct device *dev = g2d->dev;
 struct g2d_cmdlist_node *node;
 int nr;
 int ret;
 struct g2d_buf_info *buf_info;

 g2d->cmdlist_dma_attrs = DMA_ATTR_WRITE_COMBINE;

 g2d->cmdlist_pool_virt = dma_alloc_attrs(to_dma_dev(g2d->drm_dev),
      G2D_CMDLIST_POOL_SIZE,
      &g2d->cmdlist_pool, GFP_KERNEL,
      g2d->cmdlist_dma_attrs);
 if (!g2d->cmdlist_pool_virt) {
  dev_err(dev, "failed to allocate dma memory\n");
  return -ENOMEM;
 }

 node = kcalloc(G2D_CMDLIST_NUM, sizeof(*node), GFP_KERNEL);
 if (!node) {
  ret = -ENOMEM;
  goto err;
 }

 for (nr = 0; nr < G2D_CMDLIST_NUM; nr++) {
  unsigned int i;

  node[nr].cmdlist =
   g2d->cmdlist_pool_virt + nr * G2D_CMDLIST_SIZE;
  node[nr].dma_addr =
   g2d->cmdlist_pool + nr * G2D_CMDLIST_SIZE;

  buf_info = &node[nr].buf_info;
  for (i = 0; i < MAX_REG_TYPE_NR; i++)
   buf_info->reg_types[i] = REG_TYPE_NONE;

  list_add_tail(&node[nr].list, &g2d->free_cmdlist);
 }

 return 0;

err:
 dma_free_attrs(to_dma_dev(g2d->drm_dev), G2D_CMDLIST_POOL_SIZE,
   g2d->cmdlist_pool_virt,
   g2d->cmdlist_pool, g2d->cmdlist_dma_attrs);
 return ret;
}
