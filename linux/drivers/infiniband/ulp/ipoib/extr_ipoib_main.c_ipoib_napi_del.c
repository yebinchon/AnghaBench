
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int send_napi; int recv_napi; } ;


 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void ipoib_napi_del(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 netif_napi_del(&priv->recv_napi);
 netif_napi_del(&priv->send_napi);
}
