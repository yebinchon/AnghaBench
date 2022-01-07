
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_sec_meta {int lba; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; void* meta_list; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ ADDR_EMPTY ;
 int WARN_ON (int) ;
 scalar_t__ le64_to_cpu (int ) ;
 struct ppa_addr* nvm_rq_to_ppa_list (struct nvm_rq*) ;
 int pblk_err (struct pblk*,char*,scalar_t__,scalar_t__) ;
 struct pblk_sec_meta* pblk_get_meta (struct pblk*,void*,int) ;
 int pblk_is_oob_meta_supported (struct pblk*) ;
 int print_ppa (struct pblk*,struct ppa_addr*,char*,int) ;

__attribute__((used)) static void pblk_read_check_seq(struct pblk *pblk, struct nvm_rq *rqd,
    sector_t blba)
{
 void *meta_list = rqd->meta_list;
 int nr_lbas = rqd->nr_ppas;
 int i;

 if (!pblk_is_oob_meta_supported(pblk))
  return;

 for (i = 0; i < nr_lbas; i++) {
  struct pblk_sec_meta *meta = pblk_get_meta(pblk, meta_list, i);
  u64 lba = le64_to_cpu(meta->lba);

  if (lba == ADDR_EMPTY)
   continue;

  if (lba != blba + i) {





   pblk_err(pblk, "corrupted read LBA (%llu/%llu)\n",
       lba, (u64)blba + i);
   WARN_ON(1);
  }
 }
}
