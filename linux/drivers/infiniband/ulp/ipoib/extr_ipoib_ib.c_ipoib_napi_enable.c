
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int send_napi; int recv_napi; } ;


 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int napi_enable (int *) ;

__attribute__((used)) static void ipoib_napi_enable(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 napi_enable(&priv->recv_napi);
 napi_enable(&priv->send_napi);
}
