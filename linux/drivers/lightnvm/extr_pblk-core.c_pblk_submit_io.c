
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int inflight_io; struct nvm_tgt_dev* dev; } ;
struct nvm_tgt_dev {int dummy; } ;
struct nvm_rq {int dummy; } ;


 int NVM_IO_ERR ;
 int atomic_inc (int *) ;
 int nvm_submit_io (struct nvm_tgt_dev*,struct nvm_rq*,void*) ;
 scalar_t__ pblk_check_io (struct pblk*,struct nvm_rq*) ;

int pblk_submit_io(struct pblk *pblk, struct nvm_rq *rqd, void *buf)
{
 struct nvm_tgt_dev *dev = pblk->dev;

 atomic_inc(&pblk->inflight_io);






 return nvm_submit_io(dev, rqd, buf);
}
