
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct net_device {int dummy; } ;
struct iw_cm_id {int m_remote_addr; } ;


 int dev_put (struct net_device*) ;
 int init_net ;
 struct net_device* ip_dev_find (int *,int ) ;

__attribute__((used)) static int is_loopback_dst(struct iw_cm_id *cm_id)
{
 struct net_device *dev;
 struct sockaddr_in *raddr = (struct sockaddr_in *)&cm_id->m_remote_addr;

 dev = ip_dev_find(&init_net, raddr->sin_addr.s_addr);
 if (!dev)
  return 0;
 dev_put(dev);
 return 1;
}
