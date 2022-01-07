
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int port; int ca; } ;
struct ifla_vf_stats {int dummy; } ;


 int ib_get_vf_stats (int ,int,int ,struct ifla_vf_stats*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

__attribute__((used)) static int ipoib_get_vf_stats(struct net_device *dev, int vf,
         struct ifla_vf_stats *vf_stats)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 return ib_get_vf_stats(priv->ca, vf, priv->port, vf_stats);
}
