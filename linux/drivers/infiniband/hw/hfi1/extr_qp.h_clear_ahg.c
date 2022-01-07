
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_qp {int s_flags; scalar_t__ s_ahgidx; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {scalar_t__ s_sde; TYPE_1__* s_ahg; } ;
struct TYPE_2__ {scalar_t__ ahgcount; } ;


 int HFI1_S_AHG_CLEAR ;
 int HFI1_S_AHG_VALID ;
 int sdma_ahg_free (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void clear_ahg(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;

 priv->s_ahg->ahgcount = 0;
 qp->s_flags &= ~(HFI1_S_AHG_VALID | HFI1_S_AHG_CLEAR);
 if (priv->s_sde && qp->s_ahgidx >= 0)
  sdma_ahg_free(priv->s_sde, qp->s_ahgidx);
 qp->s_ahgidx = -1;
}
