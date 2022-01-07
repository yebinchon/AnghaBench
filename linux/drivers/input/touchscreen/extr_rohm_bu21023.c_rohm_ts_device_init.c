
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;


 int ADC_CTRL ;
 int ADC_DIV_DEFAULT ;
 int ADC_TIMEOUT ;
 int ADC_WAIT ;
 int ADC_WAIT_DEFAULT ;
 int ANALOG_POWER_ON ;
 int BU21023_FIRMWARE_NAME ;
 int CALIBRATION_ADJUST ;
 int CALIBRATION_ADJUST_DEFAULT ;
 int CALIBRATION_DONE ;
 int CALIBRATION_REG1 ;
 int CALIBRATION_REG1_DEFAULT ;
 int CALIBRATION_REG2 ;
 int CALIBRATION_REG2_DEFAULT ;
 int CALIBRATION_REG3 ;
 int CALIBRATION_REG3_DEFAULT ;
 int COMMON_SETUP1 ;
 int COMMON_SETUP2 ;
 int COMMON_SETUP3 ;
 int CPU_FREQ ;
 int CPU_FREQ_10MHZ ;
 int CPU_POWER_OFF ;
 int CPU_POWER_ON ;
 int CPU_TIMEOUT ;
 int DUALTOUCH_REG_ON ;
 int DUALTOUCH_STABILIZE_ON ;
 int EN_MULTI ;
 int ERR_MASK ;
 int EVR_X ;
 int EVR_XY ;
 int EVR_XY_DEFAULT ;
 int EVR_X_DEFAULT ;
 int EVR_Y ;
 int EVR_Y_DEFAULT ;
 int EX_WDAT ;
 int FORCE_CALIBRATION ;
 int FORCE_CALIBRATION_OFF ;
 int FORCE_CALIBRATION_ON ;
 int INTERVAL_TIME ;
 int INTERVAL_TIME_DEFAULT ;
 int INT_CLEAR ;
 int INT_MASK ;
 int OFFSET_X ;
 int OFFSET_X_DEFAULT ;
 int OFFSET_Y ;
 int OFFSET_Y_DEFAULT ;
 int PRM_SWOFF_TIME ;
 int PRM_SWOFF_TIME_DEFAULT ;
 int PROGRAM_LOAD_DONE ;
 int PROGRAM_LOAD_ERR ;
 int SEL_TBL_DEFAULT ;
 int SLEEP_IN ;
 int SLEEP_OUT ;
 int STEP_X ;
 int STEP_X_DEFAULT ;
 int STEP_Y ;
 int STEP_Y_DEFAULT ;
 int SWCONT ;
 int SWCONT_DEFAULT ;
 int SYSTEM ;
 int TEST1 ;
 int THRESHOLD_GESTURE ;
 int THRESHOLD_GESTURE_DEFAULT ;
 int THRESHOLD_TOUCH ;
 int THRESHOLD_TOUCH_DEFAULT ;
 int dev_err (struct device*,char*,int) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int rohm_ts_load_firmware (struct i2c_client*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int rohm_ts_device_init(struct i2c_client *client, u8 setup2)
{
 struct device *dev = &client->dev;
 int error;

 disable_irq(client->irq);




 udelay(200);


 error = i2c_smbus_write_byte_data(client, SYSTEM,
       ANALOG_POWER_ON | CPU_POWER_OFF);
 if (error)
  return error;


 udelay(200);


 error = i2c_smbus_write_byte_data(client, INT_CLEAR, 0xff);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, EX_WDAT, 0);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, COMMON_SETUP1, 0);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, COMMON_SETUP2, setup2);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, COMMON_SETUP3,
       SEL_TBL_DEFAULT | EN_MULTI);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, THRESHOLD_GESTURE,
       THRESHOLD_GESTURE_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, INTERVAL_TIME,
       INTERVAL_TIME_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, CPU_FREQ, CPU_FREQ_10MHZ);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, PRM_SWOFF_TIME,
       PRM_SWOFF_TIME_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, ADC_CTRL, ADC_DIV_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, ADC_WAIT, ADC_WAIT_DEFAULT);
 if (error)
  return error;




 error = i2c_smbus_write_byte_data(client, STEP_X, STEP_X_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, STEP_Y, STEP_Y_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, OFFSET_X, OFFSET_X_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, OFFSET_Y, OFFSET_Y_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, THRESHOLD_TOUCH,
       THRESHOLD_TOUCH_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, EVR_XY, EVR_XY_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, EVR_X, EVR_X_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, EVR_Y, EVR_Y_DEFAULT);
 if (error)
  return error;


 error = i2c_smbus_write_byte_data(client, CALIBRATION_ADJUST,
       CALIBRATION_ADJUST_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, SWCONT, SWCONT_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, TEST1,
       DUALTOUCH_STABILIZE_ON |
       DUALTOUCH_REG_ON);
 if (error)
  return error;

 error = rohm_ts_load_firmware(client, BU21023_FIRMWARE_NAME);
 if (error) {
  dev_err(dev, "failed to load firmware: %d\n", error);
  return error;
 }







 error = i2c_smbus_write_byte_data(client, CALIBRATION_REG1,
       CALIBRATION_REG1_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, CALIBRATION_REG2,
       CALIBRATION_REG2_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, CALIBRATION_REG3,
       CALIBRATION_REG3_DEFAULT);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, FORCE_CALIBRATION,
       FORCE_CALIBRATION_OFF);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, FORCE_CALIBRATION,
       FORCE_CALIBRATION_ON);
 if (error)
  return error;


 error = i2c_smbus_write_byte_data(client, INT_CLEAR, 0xff);
 if (error)
  return error;


 error = i2c_smbus_write_byte_data(client, INT_MASK,
       CALIBRATION_DONE | SLEEP_OUT |
       SLEEP_IN | PROGRAM_LOAD_DONE);
 if (error)
  return error;

 error = i2c_smbus_write_byte_data(client, ERR_MASK,
       PROGRAM_LOAD_ERR | CPU_TIMEOUT |
       ADC_TIMEOUT);
 if (error)
  return error;


 error = i2c_smbus_write_byte_data(client, SYSTEM,
       ANALOG_POWER_ON | CPU_POWER_ON);

 enable_irq(client->irq);

 return error;
}
