
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max6650_data {int config; int speed; int dac; int count; int alarm_en; } ;
struct device {int of_node; } ;
struct i2c_client {struct device dev; } ;


 int MAX6650_CFG_MODE_CLOSED_LOOP ;
 int MAX6650_CFG_PRESCALER_16 ;
 int MAX6650_CFG_PRESCALER_2 ;
 int MAX6650_CFG_PRESCALER_4 ;
 int MAX6650_CFG_PRESCALER_8 ;
 int MAX6650_CFG_PRESCALER_MASK ;
 int MAX6650_CFG_V12 ;
 int MAX6650_REG_ALARM_EN ;
 int MAX6650_REG_CONFIG ;
 int MAX6650_REG_COUNT ;
 int MAX6650_REG_DAC ;
 int MAX6650_REG_SPEED ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,int) ;
 int fan_voltage ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int max6650_set_operating_mode (struct max6650_data*,int ) ;
 int max6650_set_target (struct max6650_data*,int) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int prescaler ;

__attribute__((used)) static int max6650_init_client(struct max6650_data *data,
          struct i2c_client *client)
{
 struct device *dev = &client->dev;
 int reg;
 int err;
 u32 voltage;
 u32 prescale;
 u32 target_rpm;

 if (of_property_read_u32(dev->of_node, "maxim,fan-microvolt",
     &voltage))
  voltage = fan_voltage;
 else
  voltage /= 1000000;
 if (of_property_read_u32(dev->of_node, "maxim,fan-prescale",
     &prescale))
  prescale = prescaler;

 reg = i2c_smbus_read_byte_data(client, MAX6650_REG_CONFIG);
 if (reg < 0) {
  dev_err(dev, "Error reading config register, aborting.\n");
  return reg;
 }

 switch (voltage) {
 case 0:
  break;
 case 5:
  reg &= ~MAX6650_CFG_V12;
  break;
 case 12:
  reg |= MAX6650_CFG_V12;
  break;
 default:
  dev_err(dev, "illegal value for fan_voltage (%d)\n", voltage);
 }

 switch (prescale) {
 case 0:
  break;
 case 1:
  reg &= ~MAX6650_CFG_PRESCALER_MASK;
  break;
 case 2:
  reg = (reg & ~MAX6650_CFG_PRESCALER_MASK)
    | MAX6650_CFG_PRESCALER_2;
  break;
 case 4:
  reg = (reg & ~MAX6650_CFG_PRESCALER_MASK)
    | MAX6650_CFG_PRESCALER_4;
  break;
 case 8:
  reg = (reg & ~MAX6650_CFG_PRESCALER_MASK)
    | MAX6650_CFG_PRESCALER_8;
  break;
 case 16:
  reg = (reg & ~MAX6650_CFG_PRESCALER_MASK)
    | MAX6650_CFG_PRESCALER_16;
  break;
 default:
  dev_err(dev, "illegal value for prescaler (%d)\n", prescale);
 }

 dev_info(dev, "Fan voltage: %dV, prescaler: %d.\n",
   (reg & MAX6650_CFG_V12) ? 12 : 5,
   1 << (reg & MAX6650_CFG_PRESCALER_MASK));

 err = i2c_smbus_write_byte_data(client, MAX6650_REG_CONFIG, reg);
 if (err) {
  dev_err(dev, "Config write error, aborting.\n");
  return err;
 }
 data->config = reg;

 reg = i2c_smbus_read_byte_data(client, MAX6650_REG_SPEED);
 if (reg < 0) {
  dev_err(dev, "Failed to read speed register, aborting.\n");
  return reg;
 }
 data->speed = reg;

 reg = i2c_smbus_read_byte_data(client, MAX6650_REG_DAC);
 if (reg < 0) {
  dev_err(dev, "Failed to read DAC register, aborting.\n");
  return reg;
 }
 data->dac = reg;

 reg = i2c_smbus_read_byte_data(client, MAX6650_REG_COUNT);
 if (reg < 0) {
  dev_err(dev, "Failed to read count register, aborting.\n");
  return reg;
 }
 data->count = reg;

 reg = i2c_smbus_read_byte_data(client, MAX6650_REG_ALARM_EN);
 if (reg < 0) {
  dev_err(dev, "Failed to read alarm configuration, aborting.\n");
  return reg;
 }
 data->alarm_en = reg;

 if (!of_property_read_u32(client->dev.of_node, "maxim,fan-target-rpm",
      &target_rpm)) {
  max6650_set_target(data, target_rpm);
  max6650_set_operating_mode(data, MAX6650_CFG_MODE_CLOSED_LOOP);
 }

 return 0;
}
