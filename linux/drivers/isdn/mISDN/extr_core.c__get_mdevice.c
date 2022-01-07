
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct mISDNdevice {scalar_t__ const id; } ;
struct device {int dummy; } ;


 struct mISDNdevice* dev_to_mISDN (struct device*) ;

__attribute__((used)) static int
_get_mdevice(struct device *dev, const void *id)
{
 struct mISDNdevice *mdev = dev_to_mISDN(dev);

 if (!mdev)
  return 0;
 if (mdev->id != *(const u_int *)id)
  return 0;
 return 1;
}
