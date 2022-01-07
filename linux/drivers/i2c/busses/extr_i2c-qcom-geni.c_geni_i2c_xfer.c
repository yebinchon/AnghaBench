
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_msg {int addr; int flags; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct geni_i2c_dev {scalar_t__ err; struct i2c_msg* cur; TYPE_1__ se; int done; } ;


 int I2C_M_RD ;
 int SLV_ADDR_MSK ;
 int SLV_ADDR_SHFT ;
 int STOP_STRETCH ;
 int dev_err (int ,char*,int) ;
 int geni_i2c_rx_one_msg (struct geni_i2c_dev*,struct i2c_msg*,int) ;
 int geni_i2c_tx_one_msg (struct geni_i2c_dev*,struct i2c_msg*,int) ;
 struct geni_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_set_suspended (int ) ;
 int qcom_geni_i2c_conf (struct geni_i2c_dev*) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int geni_i2c_xfer(struct i2c_adapter *adap,
    struct i2c_msg msgs[],
    int num)
{
 struct geni_i2c_dev *gi2c = i2c_get_adapdata(adap);
 int i, ret;

 gi2c->err = 0;
 reinit_completion(&gi2c->done);
 ret = pm_runtime_get_sync(gi2c->se.dev);
 if (ret < 0) {
  dev_err(gi2c->se.dev, "error turning SE resources:%d\n", ret);
  pm_runtime_put_noidle(gi2c->se.dev);

  pm_runtime_set_suspended(gi2c->se.dev);
  return ret;
 }

 qcom_geni_i2c_conf(gi2c);
 for (i = 0; i < num; i++) {
  u32 m_param = i < (num - 1) ? STOP_STRETCH : 0;

  m_param |= ((msgs[i].addr << SLV_ADDR_SHFT) & SLV_ADDR_MSK);

  gi2c->cur = &msgs[i];
  if (msgs[i].flags & I2C_M_RD)
   ret = geni_i2c_rx_one_msg(gi2c, &msgs[i], m_param);
  else
   ret = geni_i2c_tx_one_msg(gi2c, &msgs[i], m_param);

  if (ret)
   break;
 }
 if (ret == 0)
  ret = num;

 pm_runtime_mark_last_busy(gi2c->se.dev);
 pm_runtime_put_autosuspend(gi2c->se.dev);
 gi2c->cur = ((void*)0);
 gi2c->err = 0;
 return ret;
}
