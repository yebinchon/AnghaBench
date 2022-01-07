
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_tgt_dev {int dummy; } ;
struct nvm_rq {int (* end_io ) (struct nvm_rq*) ;struct nvm_tgt_dev* dev; } ;


 int nvm_rq_dev_to_tgt (struct nvm_tgt_dev*,struct nvm_rq*) ;
 int stub1 (struct nvm_rq*) ;

void nvm_end_io(struct nvm_rq *rqd)
{
 struct nvm_tgt_dev *tgt_dev = rqd->dev;


 if (tgt_dev)
  nvm_rq_dev_to_tgt(tgt_dev, rqd);

 if (rqd->end_io)
  rqd->end_io(rqd);
}
