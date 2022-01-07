
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_flags; struct hfi1_qp_priv* priv; } ;
struct iowait {int priority; } ;
struct hfi1_qp_priv {int s_flags; } ;


 int RVT_S_ACK_PENDING ;
 struct rvt_qp* iowait_to_qp (struct iowait*) ;

__attribute__((used)) static void hfi1_init_priority(struct iowait *w)
{
 struct rvt_qp *qp = iowait_to_qp(w);
 struct hfi1_qp_priv *priv = qp->priv;

 if (qp->s_flags & RVT_S_ACK_PENDING)
  w->priority++;
 if (priv->s_flags & RVT_S_ACK_PENDING)
  w->priority++;
}
