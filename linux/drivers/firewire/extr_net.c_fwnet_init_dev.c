
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; int flags; int * ethtool_ops; int tx_queue_len; int type; int hard_header_len; int addr_len; int features; int * netdev_ops; int * header_ops; } ;


 int ARPHRD_IEEE1394 ;
 int FWNET_ALEN ;
 int FWNET_HLEN ;
 int FWNET_TX_QUEUE_LEN ;
 int HZ ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int NETIF_F_HIGHDMA ;
 int fwnet_ethtool_ops ;
 int fwnet_header_ops ;
 int fwnet_netdev_ops ;

__attribute__((used)) static void fwnet_init_dev(struct net_device *net)
{
 net->header_ops = &fwnet_header_ops;
 net->netdev_ops = &fwnet_netdev_ops;
 net->watchdog_timeo = 2 * HZ;
 net->flags = IFF_BROADCAST | IFF_MULTICAST;
 net->features = NETIF_F_HIGHDMA;
 net->addr_len = FWNET_ALEN;
 net->hard_header_len = FWNET_HLEN;
 net->type = ARPHRD_IEEE1394;
 net->tx_queue_len = FWNET_TX_QUEUE_LEN;
 net->ethtool_ops = &fwnet_ethtool_ops;
}
