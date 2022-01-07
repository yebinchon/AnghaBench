
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {int parent; } ;
struct nvm_rq {int dma_meta_list; int meta_list; } ;


 int nvm_dev_dma_free (int ,int ,int ) ;

void pblk_free_rqd_meta(struct pblk *pblk, struct nvm_rq *rqd)
{
 struct nvm_tgt_dev *dev = pblk->dev;

 if (rqd->meta_list)
  nvm_dev_dma_free(dev->parent, rqd->meta_list,
    rqd->dma_meta_list);
}
