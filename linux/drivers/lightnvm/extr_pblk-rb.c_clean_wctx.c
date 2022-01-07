
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_w_ctx {int lba; int ppa; int flags; } ;


 int ADDR_EMPTY ;
 int PBLK_SUBMITTED_ENTRY ;
 int PBLK_WRITABLE_ENTRY ;
 int READ_ONCE (int ) ;
 int WARN_ONCE (int,char*) ;
 int pblk_ppa_set_empty (int *) ;
 int smp_store_release (int *,int ) ;

__attribute__((used)) static void clean_wctx(struct pblk_w_ctx *w_ctx)
{
 int flags;

 flags = READ_ONCE(w_ctx->flags);
 WARN_ONCE(!(flags & PBLK_SUBMITTED_ENTRY),
   "pblk: overwriting unsubmitted data\n");


 smp_store_release(&w_ctx->flags, PBLK_WRITABLE_ENTRY);
 pblk_ppa_set_empty(&w_ctx->ppa);
 w_ctx->lba = ADDR_EMPTY;
}
