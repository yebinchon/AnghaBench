
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_w_ctx {int lba; struct ppa_addr ppa; } ;
struct pblk_sec_meta {void* lba; } ;
struct pblk_line {int nr_valid_lbas; int sec_to_update; int ref; int id; struct pblk_emeta* emeta; } ;
struct pblk_emeta {int buf; } ;
struct pblk {int min_write_pgs; int pad_wa; int rwb; } ;
typedef scalar_t__ __le64 ;


 int ADDR_EMPTY ;
 int ENOSPC ;
 int __pblk_map_invalidate (struct pblk*,struct pblk_line*,size_t) ;
 struct ppa_addr addr_to_gen_ppa (struct pblk*,size_t,int ) ;
 int atomic64_inc (int *) ;
 int atomic_inc (int *) ;
 void* cpu_to_le64 (int ) ;
 scalar_t__* emeta_to_lbas (struct pblk*,int ) ;
 int kref_get (int *) ;
 size_t pblk_alloc_page (struct pblk*,struct pblk_line*,int) ;
 int pblk_down_rq (struct pblk*,struct ppa_addr,unsigned long*) ;
 struct pblk_sec_meta* pblk_get_meta (struct pblk*,void*,int) ;
 int pblk_line_close_meta (struct pblk*,struct pblk_line*) ;
 struct pblk_line* pblk_line_get_data (struct pblk*) ;
 scalar_t__ pblk_line_is_full (struct pblk_line*) ;
 struct pblk_line* pblk_line_replace_data (struct pblk*) ;
 int pblk_pipeline_stop (struct pblk*) ;
 struct pblk_w_ctx* pblk_rb_w_ctx (int *,unsigned int) ;

__attribute__((used)) static int pblk_map_page_data(struct pblk *pblk, unsigned int sentry,
         struct ppa_addr *ppa_list,
         unsigned long *lun_bitmap,
         void *meta_list,
         unsigned int valid_secs)
{
 struct pblk_line *line = pblk_line_get_data(pblk);
 struct pblk_emeta *emeta;
 struct pblk_w_ctx *w_ctx;
 __le64 *lba_list;
 u64 paddr;
 int nr_secs = pblk->min_write_pgs;
 int i;

 if (!line)
  return -ENOSPC;

 if (pblk_line_is_full(line)) {
  struct pblk_line *prev_line = line;




  line = pblk_line_replace_data(pblk);
  pblk_line_close_meta(pblk, prev_line);

  if (!line) {
   pblk_pipeline_stop(pblk);
   return -ENOSPC;
  }

 }

 emeta = line->emeta;
 lba_list = emeta_to_lbas(pblk, emeta->buf);

 paddr = pblk_alloc_page(pblk, line, nr_secs);

 for (i = 0; i < nr_secs; i++, paddr++) {
  struct pblk_sec_meta *meta = pblk_get_meta(pblk, meta_list, i);
  __le64 addr_empty = cpu_to_le64(ADDR_EMPTY);


  ppa_list[i] = addr_to_gen_ppa(pblk, paddr, line->id);
  if (i < valid_secs) {
   kref_get(&line->ref);
   atomic_inc(&line->sec_to_update);
   w_ctx = pblk_rb_w_ctx(&pblk->rwb, sentry + i);
   w_ctx->ppa = ppa_list[i];
   meta->lba = cpu_to_le64(w_ctx->lba);
   lba_list[paddr] = cpu_to_le64(w_ctx->lba);
   if (lba_list[paddr] != addr_empty)
    line->nr_valid_lbas++;
   else
    atomic64_inc(&pblk->pad_wa);
  } else {
   lba_list[paddr] = addr_empty;
   meta->lba = addr_empty;
   __pblk_map_invalidate(pblk, line, paddr);
  }
 }

 pblk_down_rq(pblk, ppa_list[0], lun_bitmap);
 return 0;
}
