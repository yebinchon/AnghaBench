
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int recv_cq; int send_cq; int * qp; } ;


 int ib_destroy_cq (int ) ;
 scalar_t__ ib_destroy_qp (int *) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;

void ipoib_transport_dev_cleanup(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 if (priv->qp) {
  if (ib_destroy_qp(priv->qp))
   ipoib_warn(priv, "ib_qp_destroy failed\n");

  priv->qp = ((void*)0);
 }

 ib_destroy_cq(priv->send_cq);
 ib_destroy_cq(priv->recv_cq);
}
