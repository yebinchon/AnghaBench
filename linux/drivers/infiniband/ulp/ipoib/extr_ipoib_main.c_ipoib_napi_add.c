
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int send_napi; int recv_napi; } ;


 int IPOIB_NUM_WC ;
 int MAX_SEND_CQE ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_rx_poll ;
 int ipoib_tx_poll ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;

__attribute__((used)) static void ipoib_napi_add(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 netif_napi_add(dev, &priv->recv_napi, ipoib_rx_poll, IPOIB_NUM_WC);
 netif_napi_add(dev, &priv->send_napi, ipoib_tx_poll, MAX_SEND_CQE);
}
