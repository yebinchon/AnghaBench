
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_sec_meta {int lba; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int nr_ppas; void* meta_list; } ;


 scalar_t__ ADDR_EMPTY ;
 int WARN_ON (int) ;
 int WARN_ONCE (int,char*) ;
 scalar_t__ le64_to_cpu (int ) ;
 struct ppa_addr* nvm_rq_to_ppa_list (struct nvm_rq*) ;
 int pblk_err (struct pblk*,char*,scalar_t__,scalar_t__) ;
 struct pblk_sec_meta* pblk_get_meta (struct pblk*,void*,int) ;
 int pblk_is_oob_meta_supported (struct pblk*) ;
 int print_ppa (struct pblk*,struct ppa_addr*,char*,int) ;

__attribute__((used)) static void pblk_read_check_rand(struct pblk *pblk, struct nvm_rq *rqd,
     u64 *lba_list, int nr_lbas)
{
 void *meta_lba_list = rqd->meta_list;
 int i, j;

 if (!pblk_is_oob_meta_supported(pblk))
  return;

 for (i = 0, j = 0; i < nr_lbas; i++) {
  struct pblk_sec_meta *meta = pblk_get_meta(pblk,
          meta_lba_list, j);
  u64 lba = lba_list[i];
  u64 meta_lba;

  if (lba == ADDR_EMPTY)
   continue;

  meta_lba = le64_to_cpu(meta->lba);

  if (lba != meta_lba) {





   pblk_err(pblk, "corrupted read LBA (%llu/%llu)\n",
       meta_lba, lba);
   WARN_ON(1);
  }

  j++;
 }

 WARN_ONCE(j != rqd->nr_ppas, "pblk: corrupted random request\n");
}
