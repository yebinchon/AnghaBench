
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct nvm_tgt_dev {int dummy; } ;
struct nvm_rq {int nr_ppas; } ;


 int nvm_ppa_tgt_to_dev (struct nvm_tgt_dev*,struct ppa_addr*,int ) ;
 struct ppa_addr* nvm_rq_to_ppa_list (struct nvm_rq*) ;

__attribute__((used)) static void nvm_rq_tgt_to_dev(struct nvm_tgt_dev *tgt_dev, struct nvm_rq *rqd)
{
 struct ppa_addr *ppa_list = nvm_rq_to_ppa_list(rqd);

 nvm_ppa_tgt_to_dev(tgt_dev, ppa_list, rqd->nr_ppas);
}
