
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int * srq_ring; int * srq; } ;
struct ipoib_dev_priv {TYPE_1__ cm; } ;


 int ib_destroy_srq (int *) ;
 int ipoib_cm_free_rx_ring (struct net_device*,int *) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;

void ipoib_cm_dev_cleanup(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int ret;

 if (!priv->cm.srq)
  return;

 ipoib_dbg(priv, "Cleanup ipoib connected mode.\n");

 ret = ib_destroy_srq(priv->cm.srq);
 if (ret)
  ipoib_warn(priv, "ib_destroy_srq failed: %d\n", ret);

 priv->cm.srq = ((void*)0);
 if (!priv->cm.srq_ring)
  return;

 ipoib_cm_free_rx_ring(dev, priv->cm.srq_ring);
 priv->cm.srq_ring = ((void*)0);
}
