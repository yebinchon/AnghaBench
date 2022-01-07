
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ifla_vf_stats {int dummy; } ;
struct TYPE_2__ {int (* get_vf_stats ) (struct ib_device*,int,int ,struct ifla_vf_stats*) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_device*,int,int ,struct ifla_vf_stats*) ;

int ib_get_vf_stats(struct ib_device *device, int vf, u8 port,
      struct ifla_vf_stats *stats)
{
 if (!device->ops.get_vf_stats)
  return -EOPNOTSUPP;

 return device->ops.get_vf_stats(device, vf, port, stats);
}
