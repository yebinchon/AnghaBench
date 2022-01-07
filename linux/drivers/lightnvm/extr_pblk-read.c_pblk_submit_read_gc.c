
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc_rq {int nr_secs; int secs_to_gc; int * lba_list; int data; int * paddr_list; int line; } ;
struct pblk {int inflight_reads; int recov_gc_reads; int sync_reads; int read_failed_gc; int inflight_io; } ;
struct nvm_rq {int nr_ppas; scalar_t__ error; int opcode; int * ppa_list; int ppa_addr; } ;


 int EIO ;
 int NVM_IO_OK ;
 int NVM_OP_PREAD ;
 int atomic_dec (int *) ;
 int atomic_long_add (int,int *) ;
 int atomic_long_inc (int *) ;
 int atomic_long_sub (int,int *) ;
 int memset (struct nvm_rq*,int ,int) ;
 int pblk_alloc_rqd_meta (struct pblk*,struct nvm_rq*) ;
 int pblk_free_rqd_meta (struct pblk*,struct nvm_rq*) ;
 int pblk_print_failed_rqd (struct pblk*,struct nvm_rq*,scalar_t__) ;
 int pblk_read_check_rand (struct pblk*,struct nvm_rq*,int *,int) ;
 scalar_t__ pblk_submit_io_sync (struct pblk*,struct nvm_rq*,int ) ;
 int read_ppalist_rq_gc (struct pblk*,struct nvm_rq*,int ,int *,int *,int) ;
 int read_rq_gc (struct pblk*,struct nvm_rq*,int ,int ,int ) ;

int pblk_submit_read_gc(struct pblk *pblk, struct pblk_gc_rq *gc_rq)
{
 struct nvm_rq rqd;
 int ret = NVM_IO_OK;

 memset(&rqd, 0, sizeof(struct nvm_rq));

 ret = pblk_alloc_rqd_meta(pblk, &rqd);
 if (ret)
  return ret;

 if (gc_rq->nr_secs > 1) {
  gc_rq->secs_to_gc = read_ppalist_rq_gc(pblk, &rqd, gc_rq->line,
       gc_rq->lba_list,
       gc_rq->paddr_list,
       gc_rq->nr_secs);
  if (gc_rq->secs_to_gc == 1)
   rqd.ppa_addr = rqd.ppa_list[0];
 } else {
  gc_rq->secs_to_gc = read_rq_gc(pblk, &rqd, gc_rq->line,
       gc_rq->lba_list[0],
       gc_rq->paddr_list[0]);
 }

 if (!(gc_rq->secs_to_gc))
  goto out;

 rqd.opcode = NVM_OP_PREAD;
 rqd.nr_ppas = gc_rq->secs_to_gc;

 if (pblk_submit_io_sync(pblk, &rqd, gc_rq->data)) {
  ret = -EIO;
  goto err_free_dma;
 }

 pblk_read_check_rand(pblk, &rqd, gc_rq->lba_list, gc_rq->nr_secs);

 atomic_dec(&pblk->inflight_io);

 if (rqd.error) {
  atomic_long_inc(&pblk->read_failed_gc);



 }







out:
 pblk_free_rqd_meta(pblk, &rqd);
 return ret;

err_free_dma:
 pblk_free_rqd_meta(pblk, &rqd);
 return ret;
}
