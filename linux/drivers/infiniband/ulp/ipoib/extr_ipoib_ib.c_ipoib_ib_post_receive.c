
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_6__ {int wr_id; } ;
struct ipoib_dev_priv {TYPE_2__* rx_ring; TYPE_3__ rx_wr; int qp; TYPE_1__* rx_sge; } ;
struct TYPE_5__ {int * skb; int * mapping; } ;
struct TYPE_4__ {int addr; } ;


 int IPOIB_OP_RECV ;
 int dev_kfree_skb_any (int *) ;
 int ib_post_recv (int ,TYPE_3__*,int *) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_ud_dma_unmap_rx (struct ipoib_dev_priv*,int *) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ipoib_ib_post_receive(struct net_device *dev, int id)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int ret;

 priv->rx_wr.wr_id = id | IPOIB_OP_RECV;
 priv->rx_sge[0].addr = priv->rx_ring[id].mapping[0];
 priv->rx_sge[1].addr = priv->rx_ring[id].mapping[1];


 ret = ib_post_recv(priv->qp, &priv->rx_wr, ((void*)0));
 if (unlikely(ret)) {
  ipoib_warn(priv, "receive failed for buf %d (%d)\n", id, ret);
  ipoib_ud_dma_unmap_rx(priv, priv->rx_ring[id].mapping);
  dev_kfree_skb_any(priv->rx_ring[id].skb);
  priv->rx_ring[id].skb = ((void*)0);
 }

 return ret;
}
