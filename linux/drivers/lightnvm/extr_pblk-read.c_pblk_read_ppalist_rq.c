
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_sec_meta {void* lba; } ;
struct pblk {int inflight_reads; int cache_reads; } ;
struct nvm_rq {int is_seq; int * ppa_list; int nr_ppas; void* meta_list; } ;
struct bio {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef void* __le64 ;


 scalar_t__ ADDR_EMPTY ;
 int PBLK_EXPOSED_PAGE_SIZE ;
 int atomic_long_add (int,int *) ;
 int atomic_long_inc (int *) ;
 int bio_advance (struct bio*,int ) ;
 void* cpu_to_le64 (scalar_t__) ;
 scalar_t__ pblk_addr_in_cache (int ) ;
 struct pblk_sec_meta* pblk_get_meta (struct pblk*,void*,int) ;
 scalar_t__ pblk_io_aligned (struct pblk*,int) ;
 int pblk_lookup_l2p_seq (struct pblk*,int *,scalar_t__,int ,int*) ;
 scalar_t__ pblk_ppa_empty (int ) ;
 int pblk_read_from_cache (struct pblk*,struct bio*,scalar_t__,int ) ;

__attribute__((used)) static int pblk_read_ppalist_rq(struct pblk *pblk, struct nvm_rq *rqd,
     struct bio *bio, sector_t blba,
     bool *from_cache)
{
 void *meta_list = rqd->meta_list;
 int nr_secs, i;

retry:
 nr_secs = pblk_lookup_l2p_seq(pblk, rqd->ppa_list, blba, rqd->nr_ppas,
     from_cache);

 if (!*from_cache)
  goto end;

 for (i = 0; i < nr_secs; i++) {
  struct pblk_sec_meta *meta = pblk_get_meta(pblk, meta_list, i);
  sector_t lba = blba + i;

  if (pblk_ppa_empty(rqd->ppa_list[i])) {
   __le64 addr_empty = cpu_to_le64(ADDR_EMPTY);

   meta->lba = addr_empty;
  } else if (pblk_addr_in_cache(rqd->ppa_list[i])) {





   if (!pblk_read_from_cache(pblk, bio, lba,
       rqd->ppa_list[i])) {
    if (i == 0) {




     goto retry;
    } else {
     nr_secs = i;
     goto end;
    }
   }
   meta->lba = cpu_to_le64(lba);



  }
  bio_advance(bio, PBLK_EXPOSED_PAGE_SIZE);
 }

end:
 if (pblk_io_aligned(pblk, nr_secs))
  rqd->is_seq = 1;





 return nr_secs;
}
