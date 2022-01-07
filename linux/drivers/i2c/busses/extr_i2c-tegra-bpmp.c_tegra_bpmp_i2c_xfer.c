
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int tegra_bpmp_i2c_xfer_common (struct i2c_adapter*,struct i2c_msg*,int,int) ;

__attribute__((used)) static int tegra_bpmp_i2c_xfer(struct i2c_adapter *adapter,
          struct i2c_msg *msgs, int num)
{
 return tegra_bpmp_i2c_xfer_common(adapter, msgs, num, 0);
}
