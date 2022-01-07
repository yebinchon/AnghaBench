
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {scalar_t__ raw; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
typedef int __be32 ;


 int ENODEV ;
 struct in_device* __in_dev_get_rtnl (struct net_device*) ;
 int ip_mc_dec_group (struct in_device*,int ) ;
 int ip_mc_inc_group (struct in_device*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int cma_igmp_send(struct net_device *ndev, union ib_gid *mgid, bool join)
{
 struct in_device *in_dev = ((void*)0);

 if (ndev) {
  rtnl_lock();
  in_dev = __in_dev_get_rtnl(ndev);
  if (in_dev) {
   if (join)
    ip_mc_inc_group(in_dev,
      *(__be32 *)(mgid->raw + 12));
   else
    ip_mc_dec_group(in_dev,
      *(__be32 *)(mgid->raw + 12));
  }
  rtnl_unlock();
 }
 return (in_dev) ? 0 : -ENODEV;
}
