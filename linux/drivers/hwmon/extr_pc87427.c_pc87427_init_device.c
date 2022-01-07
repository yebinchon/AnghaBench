
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pc87427_sio_data {int has_fanin; int has_fanout; } ;
struct pc87427_data {int fan_enabled; int pwm_enabled; int pwm_auto_ok; int temp_enabled; } ;
struct device {int dummy; } ;


 int BANK_FC (int) ;
 int BANK_FM (int) ;
 int BANK_TM (int) ;
 int FAN_STATUS_MONEN ;
 int LD_FAN ;
 int LD_TEMP ;
 int PC87427_REG_BANK ;
 int PC87427_REG_FAN_STATUS ;
 int PC87427_REG_PWM_ENABLE ;
 int PC87427_REG_TEMP_STATUS ;
 int PWM_ENABLE_CTLEN ;
 int PWM_ENABLE_MODE_MASK ;
 int PWM_MODE_AUTO ;
 int TEMP_STATUS_CHANEN ;
 int dev_dbg (struct device*,char*,...) ;
 struct pc87427_data* dev_get_drvdata (struct device*) ;
 struct pc87427_sio_data* dev_get_platdata (struct device*) ;
 int dev_warn (struct device*,char*,char*) ;
 int pc87427_read8 (struct pc87427_data*,int ,int ) ;
 int pc87427_read8_bank (struct pc87427_data*,int ,int ,int ) ;
 int pc87427_write8_bank (struct pc87427_data*,int ,int ,int ,int) ;

__attribute__((used)) static void pc87427_init_device(struct device *dev)
{
 struct pc87427_sio_data *sio_data = dev_get_platdata(dev);
 struct pc87427_data *data = dev_get_drvdata(dev);
 int i;
 u8 reg;


 reg = pc87427_read8(data, LD_FAN, PC87427_REG_BANK);
 if (!(reg & 0x80))
  dev_warn(dev, "%s module not ready!\n", "FMC");


 for (i = 0; i < 8; i++) {
  if (!(sio_data->has_fanin & (1 << i)))
   continue;
  reg = pc87427_read8_bank(data, LD_FAN, BANK_FM(i),
      PC87427_REG_FAN_STATUS);
  if (reg & FAN_STATUS_MONEN)
   data->fan_enabled |= (1 << i);
 }

 if (!data->fan_enabled) {
  dev_dbg(dev, "Enabling monitoring of all fans\n");
  for (i = 0; i < 8; i++) {
   if (!(sio_data->has_fanin & (1 << i)))
    continue;
   pc87427_write8_bank(data, LD_FAN, BANK_FM(i),
         PC87427_REG_FAN_STATUS,
         FAN_STATUS_MONEN);
  }
  data->fan_enabled = sio_data->has_fanin;
 }


 for (i = 0; i < 4; i++) {
  if (!(sio_data->has_fanout & (1 << i)))
   continue;
  reg = pc87427_read8_bank(data, LD_FAN, BANK_FC(i),
      PC87427_REG_PWM_ENABLE);
  if (reg & PWM_ENABLE_CTLEN)
   data->pwm_enabled |= (1 << i);






  if ((reg & PWM_ENABLE_MODE_MASK) == PWM_MODE_AUTO) {
   dev_dbg(dev, "PWM%d is in automatic control mode\n",
    i + 1);
   data->pwm_auto_ok |= (1 << i);
  }
 }


 reg = pc87427_read8(data, LD_TEMP, PC87427_REG_BANK);
 if (!(reg & 0x80))
  dev_warn(dev, "%s module not ready!\n", "HMC");


 for (i = 0; i < 6; i++) {
  reg = pc87427_read8_bank(data, LD_TEMP, BANK_TM(i),
      PC87427_REG_TEMP_STATUS);
  if (reg & TEMP_STATUS_CHANEN)
   data->temp_enabled |= (1 << i);
 }
}
