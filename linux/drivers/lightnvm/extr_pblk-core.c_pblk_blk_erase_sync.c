
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {int dummy; } ;
struct nvm_rq {struct pblk* private; int * member_0; } ;


 int PBLK_CHUNK_RESET_START ;
 int __pblk_end_io_erase (struct pblk*,struct nvm_rq*) ;
 int pblk_disk_name (struct pblk*) ;
 int pblk_setup_e_rq (struct pblk*,struct nvm_rq*,struct ppa_addr) ;
 int pblk_submit_io_sync (struct pblk*,struct nvm_rq*,int *) ;
 int trace_pblk_chunk_reset (int ,struct ppa_addr*,int ) ;

__attribute__((used)) static int pblk_blk_erase_sync(struct pblk *pblk, struct ppa_addr ppa)
{
 struct nvm_rq rqd = {((void*)0)};
 int ret;

 trace_pblk_chunk_reset(pblk_disk_name(pblk), &ppa,
    PBLK_CHUNK_RESET_START);

 pblk_setup_e_rq(pblk, &rqd, ppa);




 ret = pblk_submit_io_sync(pblk, &rqd, ((void*)0));
 rqd.private = pblk;
 __pblk_end_io_erase(pblk, &rqd);

 return ret;
}
