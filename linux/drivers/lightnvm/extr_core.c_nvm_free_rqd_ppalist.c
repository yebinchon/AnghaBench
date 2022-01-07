
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_tgt_dev {int parent; } ;
struct nvm_rq {int dma_ppa_list; int ppa_list; } ;


 int nvm_dev_dma_free (int ,int ,int ) ;

__attribute__((used)) static void nvm_free_rqd_ppalist(struct nvm_tgt_dev *tgt_dev,
   struct nvm_rq *rqd)
{
 if (!rqd->ppa_list)
  return;

 nvm_dev_dma_free(tgt_dev->parent, rqd->ppa_list, rqd->dma_ppa_list);
}
