
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_cmdbuf_suballoc {int vaddr; int paddr; int free_event; int lock; struct device* dev; } ;
struct device {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 struct etnaviv_cmdbuf_suballoc* ERR_PTR (int) ;
 scalar_t__ ETNAVIV_SOFTPIN_START_ADDRESS ;
 int GFP_KERNEL ;
 scalar_t__ SUBALLOC_SIZE ;
 int dma_alloc_wc (struct device*,scalar_t__,int *,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct etnaviv_cmdbuf_suballoc*) ;
 struct etnaviv_cmdbuf_suballoc* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct etnaviv_cmdbuf_suballoc *
etnaviv_cmdbuf_suballoc_new(struct device *dev)
{
 struct etnaviv_cmdbuf_suballoc *suballoc;
 int ret;

 suballoc = kzalloc(sizeof(*suballoc), GFP_KERNEL);
 if (!suballoc)
  return ERR_PTR(-ENOMEM);

 suballoc->dev = dev;
 mutex_init(&suballoc->lock);
 init_waitqueue_head(&suballoc->free_event);

 BUILD_BUG_ON(ETNAVIV_SOFTPIN_START_ADDRESS < SUBALLOC_SIZE);
 suballoc->vaddr = dma_alloc_wc(dev, SUBALLOC_SIZE,
           &suballoc->paddr, GFP_KERNEL);
 if (!suballoc->vaddr) {
  ret = -ENOMEM;
  goto free_suballoc;
 }

 return suballoc;

free_suballoc:
 kfree(suballoc);

 return ERR_PTR(ret);
}
