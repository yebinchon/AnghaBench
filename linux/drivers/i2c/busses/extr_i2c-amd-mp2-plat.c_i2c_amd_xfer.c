
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int mp2_dev; } ;
struct amd_i2c_dev {TYPE_1__ common; } ;


 int EINVAL ;
 int amd_mp2_pm_runtime_get (int ) ;
 int amd_mp2_pm_runtime_put (int ) ;
 int i2c_amd_xfer_msg (struct amd_i2c_dev*,struct i2c_msg*) ;
 struct amd_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i2c_amd_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 struct amd_i2c_dev *i2c_dev = i2c_get_adapdata(adap);
 int i;
 struct i2c_msg *pmsg;
 int err;


 if (unlikely(!i2c_dev->common.mp2_dev))
  return -EINVAL;

 amd_mp2_pm_runtime_get(i2c_dev->common.mp2_dev);

 for (i = 0; i < num; i++) {
  pmsg = &msgs[i];
  err = i2c_amd_xfer_msg(i2c_dev, pmsg);
  if (err)
   break;
 }

 amd_mp2_pm_runtime_put(i2c_dev->common.mp2_dev);
 return err ? err : num;
}
