
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct net_device {int ifindex; } ;
struct flowi4 {void* saddr; void* daddr; int flowi4_iif; } ;
struct fib_result {int dummy; } ;
typedef int fl4 ;
typedef void* __be32 ;


 struct net_device* FIB_RES_DEV (struct fib_result) ;
 int dev_net (struct net_device*) ;
 int fib_lookup (int ,struct flowi4*,struct fib_result*,int ) ;
 scalar_t__ ipv4_is_lbcast (void*) ;
 scalar_t__ ipv4_is_loopback (void*) ;
 scalar_t__ ipv4_is_multicast (void*) ;
 scalar_t__ ipv4_is_zeronet (void*) ;
 int memset (struct flowi4*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool validate_ipv4_net_dev(struct net_device *net_dev,
      const struct sockaddr_in *dst_addr,
      const struct sockaddr_in *src_addr)
{
 __be32 daddr = dst_addr->sin_addr.s_addr,
        saddr = src_addr->sin_addr.s_addr;
 struct fib_result res;
 struct flowi4 fl4;
 int err;
 bool ret;

 if (ipv4_is_multicast(saddr) || ipv4_is_lbcast(saddr) ||
     ipv4_is_lbcast(daddr) || ipv4_is_zeronet(saddr) ||
     ipv4_is_zeronet(daddr) || ipv4_is_loopback(daddr) ||
     ipv4_is_loopback(saddr))
  return 0;

 memset(&fl4, 0, sizeof(fl4));
 fl4.flowi4_iif = net_dev->ifindex;
 fl4.daddr = daddr;
 fl4.saddr = saddr;

 rcu_read_lock();
 err = fib_lookup(dev_net(net_dev), &fl4, &res, 0);
 ret = err == 0 && FIB_RES_DEV(res) == net_dev;
 rcu_read_unlock();

 return ret;
}
