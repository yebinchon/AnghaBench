
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int slave_addr; struct i2c_adapter* i2c_bus; struct ch7xxx_priv* dev_priv; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_adapter {int name; } ;
struct ch7xxx_priv {int quiet; } ;


 int DRM_DEBUG_KMS (char*,int,int ,int ) ;
 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static bool ch7xxx_readb(struct intel_dvo_device *dvo, int addr, u8 *ch)
{
 struct ch7xxx_priv *ch7xxx = dvo->dev_priv;
 struct i2c_adapter *adapter = dvo->i2c_bus;
 u8 out_buf[2];
 u8 in_buf[2];

 struct i2c_msg msgs[] = {
  {
   .addr = dvo->slave_addr,
   .flags = 0,
   .len = 1,
   .buf = out_buf,
  },
  {
   .addr = dvo->slave_addr,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = in_buf,
  }
 };

 out_buf[0] = addr;
 out_buf[1] = 0;

 if (i2c_transfer(adapter, msgs, 2) == 2) {
  *ch = in_buf[0];
  return 1;
 }

 if (!ch7xxx->quiet) {
  DRM_DEBUG_KMS("Unable to read register 0x%02x from %s:%02x.\n",
     addr, adapter->name, dvo->slave_addr);
 }
 return 0;
}
