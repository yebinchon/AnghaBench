
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {int dummy; } ;
struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {struct pblk* private; int end_io; } ;


 int PBLK_CHUNK_RESET_START ;
 int PBLK_ERASE ;
 struct nvm_rq* pblk_alloc_rqd (struct pblk*,int ) ;
 int pblk_disk_name (struct pblk*) ;
 int pblk_end_io_erase ;
 int pblk_err (struct pblk*,char*,int ,int ) ;
 int pblk_ppa_to_line_id (struct ppa_addr) ;
 int pblk_ppa_to_pos (struct nvm_geo*,struct ppa_addr) ;
 int pblk_setup_e_rq (struct pblk*,struct nvm_rq*,struct ppa_addr) ;
 int pblk_submit_io (struct pblk*,struct nvm_rq*,int *) ;
 int trace_pblk_chunk_reset (int ,struct ppa_addr*,int ) ;

int pblk_blk_erase_async(struct pblk *pblk, struct ppa_addr ppa)
{
 struct nvm_rq *rqd;
 int err;

 rqd = pblk_alloc_rqd(pblk, PBLK_ERASE);

 pblk_setup_e_rq(pblk, rqd, ppa);

 rqd->end_io = pblk_end_io_erase;
 rqd->private = pblk;

 trace_pblk_chunk_reset(pblk_disk_name(pblk),
    &ppa, PBLK_CHUNK_RESET_START);




 err = pblk_submit_io(pblk, rqd, ((void*)0));
 if (err) {
  struct nvm_tgt_dev *dev = pblk->dev;
  struct nvm_geo *geo = &dev->geo;

  pblk_err(pblk, "could not async erase line:%d,blk:%d\n",
     pblk_ppa_to_line_id(ppa),
     pblk_ppa_to_pos(geo, ppa));
 }

 return err;
}
