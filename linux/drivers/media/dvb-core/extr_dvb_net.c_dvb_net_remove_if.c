
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct dvb_net_priv {int restart_net_feed_wq; int set_multicast_list_wq; scalar_t__ in_use; } ;
struct dvb_net {struct net_device** device; scalar_t__* state; } ;


 int EBUSY ;
 int EINVAL ;
 int dvb_net_stop (struct net_device*) ;
 int flush_work (int *) ;
 int free_netdev (struct net_device*) ;
 struct dvb_net_priv* netdev_priv (struct net_device*) ;
 int pr_info (char*,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int dvb_net_remove_if(struct dvb_net *dvbnet, unsigned long num)
{
 struct net_device *net = dvbnet->device[num];
 struct dvb_net_priv *priv;

 if (!dvbnet->state[num])
  return -EINVAL;
 priv = netdev_priv(net);
 if (priv->in_use)
  return -EBUSY;

 dvb_net_stop(net);
 flush_work(&priv->set_multicast_list_wq);
 flush_work(&priv->restart_net_feed_wq);
 pr_info("removed network interface %s\n", net->name);
 unregister_netdev(net);
 dvbnet->state[num]=0;
 dvbnet->device[num] = ((void*)0);
 free_netdev(net);

 return 0;
}
