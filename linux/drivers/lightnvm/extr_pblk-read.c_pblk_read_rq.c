
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_sec_meta {void* lba; } ;
struct pblk {int cache_reads; int inflight_reads; } ;
struct nvm_rq {struct ppa_addr ppa_addr; int meta_list; } ;
struct bio {int dummy; } ;
typedef int sector_t ;
typedef void* __le64 ;


 int ADDR_EMPTY ;
 int atomic_long_inc (int *) ;
 void* cpu_to_le64 (int ) ;
 scalar_t__ pblk_addr_in_cache (struct ppa_addr) ;
 struct pblk_sec_meta* pblk_get_meta (struct pblk*,int ,int ) ;
 int pblk_lookup_l2p_seq (struct pblk*,struct ppa_addr*,int ,int,int*) ;
 scalar_t__ pblk_ppa_empty (struct ppa_addr) ;
 int pblk_read_from_cache (struct pblk*,struct bio*,int ,struct ppa_addr) ;

__attribute__((used)) static void pblk_read_rq(struct pblk *pblk, struct nvm_rq *rqd, struct bio *bio,
    sector_t lba, bool *from_cache)
{
 struct pblk_sec_meta *meta = pblk_get_meta(pblk, rqd->meta_list, 0);
 struct ppa_addr ppa;

 pblk_lookup_l2p_seq(pblk, &ppa, lba, 1, from_cache);





retry:
 if (pblk_ppa_empty(ppa)) {
  __le64 addr_empty = cpu_to_le64(ADDR_EMPTY);

  meta->lba = addr_empty;
  return;
 }




 if (pblk_addr_in_cache(ppa)) {
  if (!pblk_read_from_cache(pblk, bio, lba, ppa)) {
   pblk_lookup_l2p_seq(pblk, &ppa, lba, 1, from_cache);
   goto retry;
  }

  meta->lba = cpu_to_le64(lba);




 } else {
  rqd->ppa_addr = ppa;
 }
}
