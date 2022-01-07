
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_w_ctx {scalar_t__ lba; int ppa; int flags; } ;
struct pblk_gc_rq {int secs_to_gc; int nr_secs; scalar_t__* lba_list; int * paddr_list; int line; void* data; } ;
struct pblk {int recov_gc_writes; int inflight_writes; int gc_wa; int rwb; } ;


 scalar_t__ ADDR_EMPTY ;
 int NVM_IO_OK ;
 int PBLK_EXPOSED_PAGE_SIZE ;
 int PBLK_IOTYPE_GC ;
 int WARN_ONCE (int,char*) ;
 int atomic64_add (int,int *) ;
 int atomic_long_add (int,int *) ;
 int io_schedule () ;
 int pblk_ppa_set_empty (int *) ;
 int pblk_rb_may_write_gc (int *,int,unsigned int*) ;
 unsigned int pblk_rb_wrap_pos (int *,unsigned int) ;
 int pblk_rb_write_entry_gc (int *,void*,struct pblk_w_ctx,int ,int ,unsigned int) ;
 int pblk_write_should_kick (struct pblk*) ;

int pblk_write_gc_to_cache(struct pblk *pblk, struct pblk_gc_rq *gc_rq)
{
 struct pblk_w_ctx w_ctx;
 unsigned int bpos, pos;
 void *data = gc_rq->data;
 int i, valid_entries;





retry:
 if (!pblk_rb_may_write_gc(&pblk->rwb, gc_rq->secs_to_gc, &bpos)) {
  io_schedule();
  goto retry;
 }

 w_ctx.flags = PBLK_IOTYPE_GC;
 pblk_ppa_set_empty(&w_ctx.ppa);

 for (i = 0, valid_entries = 0; i < gc_rq->nr_secs; i++) {
  if (gc_rq->lba_list[i] == ADDR_EMPTY)
   continue;

  w_ctx.lba = gc_rq->lba_list[i];

  pos = pblk_rb_wrap_pos(&pblk->rwb, bpos + valid_entries);
  pblk_rb_write_entry_gc(&pblk->rwb, data, w_ctx, gc_rq->line,
      gc_rq->paddr_list[i], pos);

  data += PBLK_EXPOSED_PAGE_SIZE;
  valid_entries++;
 }

 WARN_ONCE(gc_rq->secs_to_gc != valid_entries,
     "pblk: inconsistent GC write\n");

 atomic64_add(valid_entries, &pblk->gc_wa);






 pblk_write_should_kick(pblk);
 return NVM_IO_OK;
}
