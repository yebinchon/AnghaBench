
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subnet_prefix; } ;
union ib_gid {int * raw; TYPE_1__ global; } ;
struct net_device {int dummy; } ;


 int addrconf_ifid_eui48 (int *,struct net_device*) ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static void make_default_gid(struct net_device *dev, union ib_gid *gid)
{
 gid->global.subnet_prefix = cpu_to_be64(0xfe80000000000000LL);
 addrconf_ifid_eui48(&gid->raw[8], dev);
}
