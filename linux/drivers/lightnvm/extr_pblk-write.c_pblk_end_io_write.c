
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_c_ctx {int dummy; } ;
struct pblk {int inflight_io; } ;
struct nvm_rq {TYPE_1__* bio; scalar_t__ error; struct pblk* private; } ;
struct TYPE_2__ {int bi_status; } ;


 int WARN_ONCE (int ,char*) ;
 int atomic_dec (int *) ;
 struct pblk_c_ctx* nvm_rq_to_pdu (struct nvm_rq*) ;
 int pblk_check_chunk_state_update (struct pblk*,struct nvm_rq*) ;
 int pblk_complete_write (struct pblk*,struct nvm_rq*,struct pblk_c_ctx*) ;
 int pblk_end_w_fail (struct pblk*,struct nvm_rq*) ;
 scalar_t__ trace_pblk_chunk_state_enabled () ;

__attribute__((used)) static void pblk_end_io_write(struct nvm_rq *rqd)
{
 struct pblk *pblk = rqd->private;
 struct pblk_c_ctx *c_ctx = nvm_rq_to_pdu(rqd);

 if (rqd->error) {
  pblk_end_w_fail(pblk, rqd);
  return;
 } else {
  if (trace_pblk_chunk_state_enabled())
   pblk_check_chunk_state_update(pblk, rqd);



 }

 pblk_complete_write(pblk, rqd, c_ctx);
 atomic_dec(&pblk->inflight_io);
}
