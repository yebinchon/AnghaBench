
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_g_ctx {scalar_t__ private; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int error; struct pblk* private; } ;
struct bio {int dummy; } ;


 int __pblk_end_io_read (struct pblk*,struct nvm_rq*,int) ;
 struct pblk_g_ctx* nvm_rq_to_pdu (struct nvm_rq*) ;
 int pblk_end_user_read (struct bio*,int ) ;

__attribute__((used)) static void pblk_end_io_read(struct nvm_rq *rqd)
{
 struct pblk *pblk = rqd->private;
 struct pblk_g_ctx *r_ctx = nvm_rq_to_pdu(rqd);
 struct bio *bio = (struct bio *)r_ctx->private;

 pblk_end_user_read(bio, rqd->error);
 __pblk_end_io_read(pblk, rqd, 1);
}
