
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ppa_addr {int dummy; } ;
struct pblk {int addrf; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {int parent; } ;


 struct ppa_addr nvm_ppa32_to_ppa64 (int ,int *,int ) ;

__attribute__((used)) static inline struct ppa_addr pblk_ppa32_to_ppa64(struct pblk *pblk, u32 ppa32)
{
 struct nvm_tgt_dev *dev = pblk->dev;

 return nvm_ppa32_to_ppa64(dev->parent, &pblk->addrf, ppa32);
}
