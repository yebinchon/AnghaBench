
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i3c_master_controller {int bus; TYPE_1__* ops; } ;
struct i2c_msg {scalar_t__ addr; } ;
struct i2c_dev_desc {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int (* i2c_xfers ) (struct i2c_dev_desc*,struct i2c_msg*,int) ;} ;


 int EINVAL ;
 int ENOENT ;
 int ENOTSUPP ;
 struct i3c_master_controller* i2c_adapter_to_i3c_master (struct i2c_adapter*) ;
 int i3c_bus_normaluse_lock (int *) ;
 int i3c_bus_normaluse_unlock (int *) ;
 struct i2c_dev_desc* i3c_master_find_i2c_dev_by_addr (struct i3c_master_controller*,scalar_t__) ;
 int stub1 (struct i2c_dev_desc*,struct i2c_msg*,int) ;

__attribute__((used)) static int i3c_master_i2c_adapter_xfer(struct i2c_adapter *adap,
           struct i2c_msg *xfers, int nxfers)
{
 struct i3c_master_controller *master = i2c_adapter_to_i3c_master(adap);
 struct i2c_dev_desc *dev;
 int i, ret;
 u16 addr;

 if (!xfers || !master || nxfers <= 0)
  return -EINVAL;

 if (!master->ops->i2c_xfers)
  return -ENOTSUPP;


 addr = xfers[0].addr;
 for (i = 1; i < nxfers; i++) {
  if (addr != xfers[i].addr)
   return -ENOTSUPP;
 }

 i3c_bus_normaluse_lock(&master->bus);
 dev = i3c_master_find_i2c_dev_by_addr(master, addr);
 if (!dev)
  ret = -ENOENT;
 else
  ret = master->ops->i2c_xfers(dev, xfers, nxfers);
 i3c_bus_normaluse_unlock(&master->bus);

 return ret ? ret : nxfers;
}
