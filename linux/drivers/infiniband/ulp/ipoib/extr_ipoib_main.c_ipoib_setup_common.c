
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int tx_queue_len; int features; int needs_free_netdev; int broadcast; int type; int addr_len; int hard_header_len; int watchdog_timeo; int * header_ops; } ;


 int ARPHRD_INFINIBAND ;
 int HZ ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int INFINIBAND_ALEN ;
 int IPOIB_HARD_LEN ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_VLAN_CHALLENGED ;
 int ipoib_header_ops ;
 int ipoib_sendq_size ;
 int ipoib_set_ethtool_ops (struct net_device*) ;
 int ipv4_bcast_addr ;
 int memcpy (int ,int ,int ) ;
 int netif_keep_dst (struct net_device*) ;

void ipoib_setup_common(struct net_device *dev)
{
 dev->header_ops = &ipoib_header_ops;

 ipoib_set_ethtool_ops(dev);

 dev->watchdog_timeo = HZ;

 dev->flags |= IFF_BROADCAST | IFF_MULTICAST;

 dev->hard_header_len = IPOIB_HARD_LEN;
 dev->addr_len = INFINIBAND_ALEN;
 dev->type = ARPHRD_INFINIBAND;
 dev->tx_queue_len = ipoib_sendq_size * 2;
 dev->features = (NETIF_F_VLAN_CHALLENGED |
        NETIF_F_HIGHDMA);
 netif_keep_dst(dev);

 memcpy(dev->broadcast, ipv4_bcast_addr, INFINIBAND_ALEN);






 dev->needs_free_netdev = 1;
}
