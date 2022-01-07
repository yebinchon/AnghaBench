
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tfp410_priv {int quiet; } ;
struct intel_dvo_device {int slave_addr; struct i2c_adapter* i2c_bus; struct tfp410_priv* dev_priv; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_adapter {int name; } ;


 int DRM_DEBUG_KMS (char*,int,int ,int ) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static bool tfp410_writeb(struct intel_dvo_device *dvo, int addr, u8 ch)
{
 struct tfp410_priv *tfp = dvo->dev_priv;
 struct i2c_adapter *adapter = dvo->i2c_bus;
 u8 out_buf[2];
 struct i2c_msg msg = {
  .addr = dvo->slave_addr,
  .flags = 0,
  .len = 2,
  .buf = out_buf,
 };

 out_buf[0] = addr;
 out_buf[1] = ch;

 if (i2c_transfer(adapter, &msg, 1) == 1)
  return 1;

 if (!tfp->quiet) {
  DRM_DEBUG_KMS("Unable to write register 0x%02x to %s:%d.\n",
     addr, adapter->name, dvo->slave_addr);
 }

 return 0;
}
