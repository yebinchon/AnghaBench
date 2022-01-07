
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {struct qib_qp_priv* priv; } ;
struct rvt_dev_info {int dummy; } ;
struct qib_qp_priv {struct qib_qp_priv* s_hdr; } ;


 int kfree (struct qib_qp_priv*) ;

void qib_qp_priv_free(struct rvt_dev_info *rdi, struct rvt_qp *qp)
{
 struct qib_qp_priv *priv = qp->priv;

 kfree(priv->s_hdr);
 kfree(priv);
}
