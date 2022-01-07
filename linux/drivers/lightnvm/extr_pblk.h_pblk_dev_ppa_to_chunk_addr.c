
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ppa_addr {int dummy; } ;
struct pblk {int addrf; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {int parent; } ;


 int dev_to_chunk_addr (int ,int *,struct ppa_addr) ;

__attribute__((used)) static inline u64 pblk_dev_ppa_to_chunk_addr(struct pblk *pblk,
       struct ppa_addr p)
{
 struct nvm_tgt_dev *dev = pblk->dev;

 return dev_to_chunk_addr(dev->parent, &pblk->addrf, p);
}
