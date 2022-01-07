
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_total_mcast_qp_attach; int max_mcast_grp; int max_mw; int max_mr; int max_cq; int max_qp; int max_srq; int max_ah; int max_pd; } ;
struct rxe_dev {int uc_pool; int pd_pool; int ah_pool; int srq_pool; int qp_pool; int cq_pool; int mr_pool; int mw_pool; int mc_grp_pool; TYPE_1__ attr; int mc_elem_pool; int max_ucontext; } ;


 int RXE_TYPE_AH ;
 int RXE_TYPE_CQ ;
 int RXE_TYPE_MC_ELEM ;
 int RXE_TYPE_MC_GRP ;
 int RXE_TYPE_MR ;
 int RXE_TYPE_MW ;
 int RXE_TYPE_PD ;
 int RXE_TYPE_QP ;
 int RXE_TYPE_SRQ ;
 int RXE_TYPE_UC ;
 int rxe_pool_cleanup (int *) ;
 int rxe_pool_init (struct rxe_dev*,int *,int ,int ) ;

__attribute__((used)) static int rxe_init_pools(struct rxe_dev *rxe)
{
 int err;

 err = rxe_pool_init(rxe, &rxe->uc_pool, RXE_TYPE_UC,
       rxe->max_ucontext);
 if (err)
  goto err1;

 err = rxe_pool_init(rxe, &rxe->pd_pool, RXE_TYPE_PD,
       rxe->attr.max_pd);
 if (err)
  goto err2;

 err = rxe_pool_init(rxe, &rxe->ah_pool, RXE_TYPE_AH,
       rxe->attr.max_ah);
 if (err)
  goto err3;

 err = rxe_pool_init(rxe, &rxe->srq_pool, RXE_TYPE_SRQ,
       rxe->attr.max_srq);
 if (err)
  goto err4;

 err = rxe_pool_init(rxe, &rxe->qp_pool, RXE_TYPE_QP,
       rxe->attr.max_qp);
 if (err)
  goto err5;

 err = rxe_pool_init(rxe, &rxe->cq_pool, RXE_TYPE_CQ,
       rxe->attr.max_cq);
 if (err)
  goto err6;

 err = rxe_pool_init(rxe, &rxe->mr_pool, RXE_TYPE_MR,
       rxe->attr.max_mr);
 if (err)
  goto err7;

 err = rxe_pool_init(rxe, &rxe->mw_pool, RXE_TYPE_MW,
       rxe->attr.max_mw);
 if (err)
  goto err8;

 err = rxe_pool_init(rxe, &rxe->mc_grp_pool, RXE_TYPE_MC_GRP,
       rxe->attr.max_mcast_grp);
 if (err)
  goto err9;

 err = rxe_pool_init(rxe, &rxe->mc_elem_pool, RXE_TYPE_MC_ELEM,
       rxe->attr.max_total_mcast_qp_attach);
 if (err)
  goto err10;

 return 0;

err10:
 rxe_pool_cleanup(&rxe->mc_grp_pool);
err9:
 rxe_pool_cleanup(&rxe->mw_pool);
err8:
 rxe_pool_cleanup(&rxe->mr_pool);
err7:
 rxe_pool_cleanup(&rxe->cq_pool);
err6:
 rxe_pool_cleanup(&rxe->qp_pool);
err5:
 rxe_pool_cleanup(&rxe->srq_pool);
err4:
 rxe_pool_cleanup(&rxe->ah_pool);
err3:
 rxe_pool_cleanup(&rxe->pd_pool);
err2:
 rxe_pool_cleanup(&rxe->uc_pool);
err1:
 return err;
}
