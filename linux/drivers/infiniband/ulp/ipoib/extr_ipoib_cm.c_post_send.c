
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipoib_tx_buf {int dummy; } ;
struct TYPE_4__ {unsigned int wr_id; } ;
struct TYPE_3__ {TYPE_2__ wr; } ;
struct ipoib_dev_priv {TYPE_1__ tx_wr; } ;
struct ipoib_cm_tx {int qp; } ;


 unsigned int IPOIB_OP_CM ;
 int ib_post_send (int ,TYPE_2__*,int *) ;
 int ipoib_build_sge (struct ipoib_dev_priv*,struct ipoib_tx_buf*) ;

__attribute__((used)) static inline int post_send(struct ipoib_dev_priv *priv,
       struct ipoib_cm_tx *tx,
       unsigned int wr_id,
       struct ipoib_tx_buf *tx_req)
{
 ipoib_build_sge(priv, tx_req);

 priv->tx_wr.wr.wr_id = wr_id | IPOIB_OP_CM;

 return ib_post_send(tx->qp, &priv->tx_wr.wr, ((void*)0));
}
