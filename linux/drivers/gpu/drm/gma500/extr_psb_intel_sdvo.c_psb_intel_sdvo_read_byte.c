
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psb_intel_sdvo {int i2c; int slave_addr; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static bool psb_intel_sdvo_read_byte(struct psb_intel_sdvo *psb_intel_sdvo, u8 addr, u8 *ch)
{
 struct i2c_msg msgs[] = {
  {
   .addr = psb_intel_sdvo->slave_addr,
   .flags = 0,
   .len = 1,
   .buf = &addr,
  },
  {
   .addr = psb_intel_sdvo->slave_addr,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = ch,
  }
 };
 int ret;

 if ((ret = i2c_transfer(psb_intel_sdvo->i2c, msgs, 2)) == 2)
  return 1;

 DRM_DEBUG_KMS("i2c transfer returned %d\n", ret);
 return 0;
}
