
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ppa_addr {int dummy; } ;
struct pblk {int addrf; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {int parent; } ;


 int nvm_ppa64_to_ppa32 (int ,int *,struct ppa_addr) ;

__attribute__((used)) static inline u32 pblk_ppa64_to_ppa32(struct pblk *pblk, struct ppa_addr ppa64)
{
 struct nvm_tgt_dev *dev = pblk->dev;

 return nvm_ppa64_to_ppa32(dev->parent, &pblk->addrf, ppa64);
}
