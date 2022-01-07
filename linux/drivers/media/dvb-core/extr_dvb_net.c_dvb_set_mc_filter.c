
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dvb_net_priv {size_t multi_num; int * multi_macs; } ;


 size_t DVB_NET_MULTICAST_MAX ;
 int ENOMEM ;
 int ETH_ALEN ;
 int memcpy (int ,unsigned char*,int ) ;
 struct dvb_net_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dvb_set_mc_filter(struct net_device *dev, unsigned char *addr)
{
 struct dvb_net_priv *priv = netdev_priv(dev);

 if (priv->multi_num == DVB_NET_MULTICAST_MAX)
  return -ENOMEM;

 memcpy(priv->multi_macs[priv->multi_num], addr, ETH_ALEN);

 priv->multi_num++;
 return 0;
}
