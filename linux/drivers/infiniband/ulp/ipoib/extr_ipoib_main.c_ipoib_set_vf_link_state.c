
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int port; int ca; } ;


 int ib_set_vf_link_state (int ,int,int ,int) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

__attribute__((used)) static int ipoib_set_vf_link_state(struct net_device *dev, int vf, int link_state)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 return ib_set_vf_link_state(priv->ca, vf, priv->port, link_state);
}
