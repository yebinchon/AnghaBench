
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pblk_line_meta {int blk_per_line; } ;
struct pblk_line {int blk_bitmap; } ;
struct pblk {struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int ws_opt; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;


 int find_first_zero_bit (int ,int) ;

u64 pblk_line_smeta_start(struct pblk *pblk, struct pblk_line *line)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_line_meta *lm = &pblk->lm;
 int bit;


 bit = find_first_zero_bit(line->blk_bitmap, lm->blk_per_line);
 if (bit >= lm->blk_per_line)
  return -1;

 return bit * geo->ws_opt;
}
