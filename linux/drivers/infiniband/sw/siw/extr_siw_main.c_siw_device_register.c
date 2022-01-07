
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_device {int dummy; } ;
struct siw_device {TYPE_1__* netdev; int vendor_part_id; struct ib_device base_dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ib_register_device (struct ib_device*,char const*) ;
 int pr_warn (char*,int) ;
 int siw_dbg (struct ib_device*,char*,int ) ;

__attribute__((used)) static int siw_device_register(struct siw_device *sdev, const char *name)
{
 struct ib_device *base_dev = &sdev->base_dev;
 static int dev_id = 1;
 int rv;

 rv = ib_register_device(base_dev, name);
 if (rv) {
  pr_warn("siw: device registration error %d\n", rv);
  return rv;
 }
 sdev->vendor_part_id = dev_id++;

 siw_dbg(base_dev, "HWaddr=%pM\n", sdev->netdev->dev_addr);

 return 0;
}
