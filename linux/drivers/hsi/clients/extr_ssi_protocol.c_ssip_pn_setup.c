
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int hard_header_len; int addr_len; int needs_free_netdev; int * header_ops; int tx_queue_len; int * dev_addr; int mtu; int type; int * netdev_ops; scalar_t__ features; } ;


 int ARPHRD_PHONET ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int PN_MEDIA_SOS ;
 int SSIP_DEFAULT_MTU ;
 int SSIP_TXQUEUE_LEN ;
 int phonet_header_ops ;
 int ssip_pn_ops ;

__attribute__((used)) static void ssip_pn_setup(struct net_device *dev)
{
 dev->features = 0;
 dev->netdev_ops = &ssip_pn_ops;
 dev->type = ARPHRD_PHONET;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->mtu = SSIP_DEFAULT_MTU;
 dev->hard_header_len = 1;
 dev->dev_addr[0] = PN_MEDIA_SOS;
 dev->addr_len = 1;
 dev->tx_queue_len = SSIP_TXQUEUE_LEN;

 dev->needs_free_netdev = 1;
 dev->header_ops = &phonet_header_ops;
}
