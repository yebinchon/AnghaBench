
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_i2c {int dev; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct sprd_i2c* algo_data; } ;


 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int sprd_i2c_handle_msg (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int sprd_i2c_master_xfer(struct i2c_adapter *i2c_adap,
    struct i2c_msg *msgs, int num)
{
 struct sprd_i2c *i2c_dev = i2c_adap->algo_data;
 int im, ret;

 ret = pm_runtime_get_sync(i2c_dev->dev);
 if (ret < 0)
  return ret;

 for (im = 0; im < num - 1; im++) {
  ret = sprd_i2c_handle_msg(i2c_adap, &msgs[im], 0);
  if (ret)
   goto err_msg;
 }

 ret = sprd_i2c_handle_msg(i2c_adap, &msgs[im++], 1);

err_msg:
 pm_runtime_mark_last_busy(i2c_dev->dev);
 pm_runtime_put_autosuspend(i2c_dev->dev);

 return ret < 0 ? ret : im;
}
