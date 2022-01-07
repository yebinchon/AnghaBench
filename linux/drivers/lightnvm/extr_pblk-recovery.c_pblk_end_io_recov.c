
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk_pad_rq {int ref; struct pblk* pblk; } ;
struct pblk {int inflight_io; } ;
struct nvm_rq {struct pblk_pad_rq* private; } ;


 int PBLK_WRITE_INT ;
 int atomic_dec (int *) ;
 int kref_put (int *,int ) ;
 struct ppa_addr* nvm_rq_to_ppa_list (struct nvm_rq*) ;
 int pblk_free_rqd (struct pblk*,struct nvm_rq*,int ) ;
 int pblk_recov_complete ;
 int pblk_up_chunk (struct pblk*,struct ppa_addr) ;

__attribute__((used)) static void pblk_end_io_recov(struct nvm_rq *rqd)
{
 struct ppa_addr *ppa_list = nvm_rq_to_ppa_list(rqd);
 struct pblk_pad_rq *pad_rq = rqd->private;
 struct pblk *pblk = pad_rq->pblk;

 pblk_up_chunk(pblk, ppa_list[0]);

 pblk_free_rqd(pblk, rqd, PBLK_WRITE_INT);

 atomic_dec(&pblk->inflight_io);
 kref_put(&pad_rq->ref, pblk_recov_complete);
}
