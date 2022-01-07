
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_lun {int wr_sem; } ;
struct pblk {struct pblk_lun* luns; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;


 int pblk_ppa_to_pos (struct nvm_geo*,struct ppa_addr) ;
 int up (int *) ;

void pblk_up_chunk(struct pblk *pblk, struct ppa_addr ppa)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_lun *rlun;
 int pos = pblk_ppa_to_pos(geo, ppa);

 rlun = &pblk->luns[pos];
 up(&rlun->wr_sem);
}
