
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;
struct dibx000_i2c_master {int dummy; } ;


 int DIBX000_I2C_INTERFACE_GPIO_3_4 ;
 int I2C_M_RD ;
 int dibx000_i2c_select_interface (struct dibx000_i2c_master*,int ) ;
 int dibx000_master_i2c_read (struct dibx000_i2c_master*,struct i2c_msg*) ;
 int dibx000_master_i2c_write (struct dibx000_i2c_master*,struct i2c_msg*,int) ;
 struct dibx000_i2c_master* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int dibx000_i2c_master_xfer_gpio34(struct i2c_adapter *i2c_adap, struct i2c_msg msg[], int num)
{
 struct dibx000_i2c_master *mst = i2c_get_adapdata(i2c_adap);
 int msg_index;
 int ret = 0;

 dibx000_i2c_select_interface(mst, DIBX000_I2C_INTERFACE_GPIO_3_4);
 for (msg_index = 0; msg_index < num; msg_index++) {
  if (msg[msg_index].flags & I2C_M_RD) {
   ret = dibx000_master_i2c_read(mst, &msg[msg_index]);
   if (ret != 0)
    return 0;
  } else {
   ret = dibx000_master_i2c_write(mst, &msg[msg_index], 1);
   if (ret != 0)
    return 0;
  }
 }

 return num;
}
