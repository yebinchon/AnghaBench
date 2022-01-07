
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl2832_dev {int i2c_gate_work; } ;
struct i2c_mux_core {int dummy; } ;


 struct rtl2832_dev* i2c_mux_priv (struct i2c_mux_core*) ;
 int schedule_delayed_work (int *,int ) ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static int rtl2832_deselect(struct i2c_mux_core *muxc, u32 chan_id)
{
 struct rtl2832_dev *dev = i2c_mux_priv(muxc);

 schedule_delayed_work(&dev->i2c_gate_work, usecs_to_jiffies(100));
 return 0;
}
