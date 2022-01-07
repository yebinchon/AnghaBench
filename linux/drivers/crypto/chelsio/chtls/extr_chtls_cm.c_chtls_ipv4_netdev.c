
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct chtls_dev {struct net_device** ports; } ;
struct TYPE_2__ {int inet_rcv_saddr; } ;


 TYPE_1__* inet_sk (struct sock*) ;
 int init_net ;
 struct net_device* ip_dev_find (int *,int ) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 scalar_t__ likely (int) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static struct net_device *chtls_ipv4_netdev(struct chtls_dev *cdev,
         struct sock *sk)
{
 struct net_device *ndev = cdev->ports[0];

 if (likely(!inet_sk(sk)->inet_rcv_saddr))
  return ndev;

 ndev = ip_dev_find(&init_net, inet_sk(sk)->inet_rcv_saddr);
 if (!ndev)
  return ((void*)0);

 if (is_vlan_dev(ndev))
  return vlan_dev_real_dev(ndev);
 return ndev;
}
