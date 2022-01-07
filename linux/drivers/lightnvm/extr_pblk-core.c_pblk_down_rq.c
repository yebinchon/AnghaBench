
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;


 int __pblk_down_chunk (struct pblk*,int) ;
 int pblk_ppa_to_pos (struct nvm_geo*,struct ppa_addr) ;
 scalar_t__ test_and_set_bit (int,unsigned long*) ;

void pblk_down_rq(struct pblk *pblk, struct ppa_addr ppa,
    unsigned long *lun_bitmap)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 int pos = pblk_ppa_to_pos(geo, ppa);




 if (test_and_set_bit(pos, lun_bitmap))
  return;

 __pblk_down_chunk(pblk, pos);
}
