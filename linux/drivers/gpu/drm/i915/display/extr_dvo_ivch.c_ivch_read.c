
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ivch_priv {int quiet; } ;
struct intel_dvo_device {int slave_addr; struct i2c_adapter* i2c_bus; struct ivch_priv* dev_priv; } ;
struct i2c_msg {int flags; int len; int* buf; int addr; } ;
struct i2c_adapter {int name; } ;


 int DRM_DEBUG_KMS (char*,int,int ,int ) ;
 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static bool ivch_read(struct intel_dvo_device *dvo, int addr, u16 *data)
{
 struct ivch_priv *priv = dvo->dev_priv;
 struct i2c_adapter *adapter = dvo->i2c_bus;
 u8 out_buf[1];
 u8 in_buf[2];

 struct i2c_msg msgs[] = {
  {
   .addr = dvo->slave_addr,
   .flags = I2C_M_RD,
   .len = 0,
  },
  {
   .addr = 0,
   .flags = I2C_M_NOSTART,
   .len = 1,
   .buf = out_buf,
  },
  {
   .addr = dvo->slave_addr,
   .flags = I2C_M_RD | I2C_M_NOSTART,
   .len = 2,
   .buf = in_buf,
  }
 };

 out_buf[0] = addr;

 if (i2c_transfer(adapter, msgs, 3) == 3) {
  *data = (in_buf[1] << 8) | in_buf[0];
  return 1;
 }

 if (!priv->quiet) {
  DRM_DEBUG_KMS("Unable to read register 0x%02x from "
    "%s:%02x.\n",
     addr, adapter->name, dvo->slave_addr);
 }
 return 0;
}
