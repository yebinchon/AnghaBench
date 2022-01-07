
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct nvm_tgt_dev {int parent; } ;


 struct ppa_addr generic_to_dev_addr (int ,struct ppa_addr) ;
 int nvm_map_to_dev (struct nvm_tgt_dev*,struct ppa_addr*) ;

__attribute__((used)) static void nvm_ppa_tgt_to_dev(struct nvm_tgt_dev *tgt_dev,
    struct ppa_addr *ppa_list, int nr_ppas)
{
 int i;

 for (i = 0; i < nr_ppas; i++) {
  nvm_map_to_dev(tgt_dev, &ppa_list[i]);
  ppa_list[i] = generic_to_dev_addr(tgt_dev->parent, ppa_list[i]);
 }
}
