
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_w_ctx {scalar_t__ lba; int ppa; int flags; } ;
struct pblk_rb_entry {int cacheline; struct pblk_w_ctx w_ctx; } ;
struct pblk_rb {struct pblk_rb_entry* entries; } ;
struct pblk_line {int ref; int sec_to_update; } ;
struct pblk {int trans_lock; struct pblk_rb rwb; } ;


 scalar_t__ ADDR_EMPTY ;
 int PBLK_WRITTEN_DATA ;
 int READ_ONCE (int ) ;
 int atomic_dec (int *) ;
 int kref_put (int *,int ) ;
 int pblk_line_put ;
 int pblk_ppa_comp (struct ppa_addr,int ) ;
 struct pblk_line* pblk_ppa_to_line (struct pblk*,int ) ;
 size_t pblk_rb_ptr_wrap (struct pblk_rb*,unsigned int,unsigned int) ;
 struct ppa_addr pblk_trans_map_get (struct pblk*,scalar_t__) ;
 int smp_store_release (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pblk_prepare_resubmit(struct pblk *pblk, unsigned int sentry,
      unsigned int nr_entries)
{
 struct pblk_rb *rb = &pblk->rwb;
 struct pblk_rb_entry *entry;
 struct pblk_line *line;
 struct pblk_w_ctx *w_ctx;
 struct ppa_addr ppa_l2p;
 int flags;
 unsigned int i;

 spin_lock(&pblk->trans_lock);
 for (i = 0; i < nr_entries; i++) {
  entry = &rb->entries[pblk_rb_ptr_wrap(rb, sentry, i)];
  w_ctx = &entry->w_ctx;


  if (w_ctx->lba != ADDR_EMPTY) {
   ppa_l2p = pblk_trans_map_get(pblk, w_ctx->lba);
   if (!pblk_ppa_comp(ppa_l2p, entry->cacheline))
    w_ctx->lba = ADDR_EMPTY;
  }


  flags = READ_ONCE(w_ctx->flags);
  flags |= PBLK_WRITTEN_DATA;

  smp_store_release(&w_ctx->flags, flags);




  line = pblk_ppa_to_line(pblk, w_ctx->ppa);
  atomic_dec(&line->sec_to_update);
  kref_put(&line->ref, pblk_line_put);
 }
 spin_unlock(&pblk->trans_lock);
}
