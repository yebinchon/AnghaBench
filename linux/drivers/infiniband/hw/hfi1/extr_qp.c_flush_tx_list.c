
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int s_iowait; } ;
struct TYPE_4__ {int tx_head; } ;
struct TYPE_3__ {int tx_head; } ;


 int flush_list_head (int *) ;
 TYPE_2__* iowait_get_ib_work (int *) ;
 TYPE_1__* iowait_get_tid_work (int *) ;

__attribute__((used)) static void flush_tx_list(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;

 flush_list_head(&iowait_get_ib_work(&priv->s_iowait)->tx_head);
 flush_list_head(&iowait_get_tid_work(&priv->s_iowait)->tx_head);
}
