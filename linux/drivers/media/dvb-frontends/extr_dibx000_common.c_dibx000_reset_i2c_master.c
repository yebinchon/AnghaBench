
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int addr; } ;
struct dibx000_i2c_master {int selected_interface; int i2c_adap; int i2c_addr; } ;


 int DIBX000_I2C_INTERFACE_TUNER ;
 int dibx000_i2c_gate_ctrl (struct dibx000_i2c_master*,int *,int ,int ) ;
 int dibx000_i2c_select_interface (struct dibx000_i2c_master*,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

void dibx000_reset_i2c_master(struct dibx000_i2c_master *mst)
{

 u8 tx[4];
 struct i2c_msg m = {.addr = mst->i2c_addr,.buf = tx,.len = 4 };

 dibx000_i2c_gate_ctrl(mst, tx, 0, 0);
 i2c_transfer(mst->i2c_adap, &m, 1);
 mst->selected_interface = 0xff;
 dibx000_i2c_select_interface(mst, DIBX000_I2C_INTERFACE_TUNER);
}
