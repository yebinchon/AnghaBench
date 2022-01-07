
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device {int dummy; } ;
struct TYPE_2__ {int nports; int * lldevs; } ;
struct cxio_rdev {TYPE_1__ port_info; } ;


 int ib_device_set_netdev (struct ib_device*,int ,int) ;

__attribute__((used)) static int set_netdevs(struct ib_device *ib_dev, struct cxio_rdev *rdev)
{
 int ret;
 int i;

 for (i = 0; i < rdev->port_info.nports; i++) {
  ret = ib_device_set_netdev(ib_dev, rdev->port_info.lldevs[i],
        i + 1);
  if (ret)
   return ret;
 }
 return 0;
}
