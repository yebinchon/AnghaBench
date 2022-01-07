
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_line {int id; int blk_bitmap; int blk_in_line; } ;
struct pblk {int bb_wq; int erase_failed; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {scalar_t__ version; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;


 int GFP_ATOMIC ;
 scalar_t__ NVM_OCSSD_SPEC_20 ;
 int atomic_dec (int *) ;
 int atomic_long_inc (int *) ;
 struct ppa_addr* kmalloc (int,int ) ;
 int pblk_debug (struct pblk*,char*,int ,int) ;
 int pblk_err (struct pblk*,char*,int ,int) ;
 int pblk_gen_run_ws (struct pblk*,int *,struct ppa_addr*,int ,int ,int ) ;
 int pblk_line_mark_bb ;
 int pblk_ppa_to_pos (struct nvm_geo*,struct ppa_addr) ;
 scalar_t__ test_and_set_bit (int,int ) ;

__attribute__((used)) static void pblk_mark_bb(struct pblk *pblk, struct pblk_line *line,
    struct ppa_addr ppa_addr)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct ppa_addr *ppa;
 int pos = pblk_ppa_to_pos(geo, ppa_addr);

 pblk_debug(pblk, "erase failed: line:%d, pos:%d\n", line->id, pos);
 atomic_long_inc(&pblk->erase_failed);

 atomic_dec(&line->blk_in_line);
 if (test_and_set_bit(pos, line->blk_bitmap))
  pblk_err(pblk, "attempted to erase bb: line:%d, pos:%d\n",
       line->id, pos);


 if (geo->version == NVM_OCSSD_SPEC_20)
  return;

 ppa = kmalloc(sizeof(struct ppa_addr), GFP_ATOMIC);
 if (!ppa)
  return;

 *ppa = ppa_addr;
 pblk_gen_run_ws(pblk, ((void*)0), ppa, pblk_line_mark_bb,
      GFP_ATOMIC, pblk->bb_wq);
}
