
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in; } ;
struct i3c_priv_xfer {TYPE_1__ data; int len; } ;
struct i3c_device {int bus; int desc; } ;


 int EINVAL ;
 int i3c_bus_normaluse_lock (int ) ;
 int i3c_bus_normaluse_unlock (int ) ;
 int i3c_dev_do_priv_xfers_locked (int ,struct i3c_priv_xfer*,int) ;

int i3c_device_do_priv_xfers(struct i3c_device *dev,
        struct i3c_priv_xfer *xfers,
        int nxfers)
{
 int ret, i;

 if (nxfers < 1)
  return 0;

 for (i = 0; i < nxfers; i++) {
  if (!xfers[i].len || !xfers[i].data.in)
   return -EINVAL;
 }

 i3c_bus_normaluse_lock(dev->bus);
 ret = i3c_dev_do_priv_xfers_locked(dev->desc, xfers, nxfers);
 i3c_bus_normaluse_unlock(dev->bus);

 return ret;
}
