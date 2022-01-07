
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_line {struct nvm_chk_meta* chks; } ;
struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_chk_meta {int dummy; } ;


 struct pblk_line* pblk_ppa_to_line (struct pblk*,struct ppa_addr) ;
 int pblk_ppa_to_pos (struct nvm_geo*,struct ppa_addr) ;

__attribute__((used)) static inline struct nvm_chk_meta *pblk_dev_ppa_to_chunk(struct pblk *pblk,
       struct ppa_addr p)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_line *line = pblk_ppa_to_line(pblk, p);
 int pos = pblk_ppa_to_pos(geo, p);

 return &line->chks[pos];
}
