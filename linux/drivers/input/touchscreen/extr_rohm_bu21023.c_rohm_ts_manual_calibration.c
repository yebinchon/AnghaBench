
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rohm_ts_data {struct i2c_client* client; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef int s32 ;
typedef int buf ;


 scalar_t__ AXIS_ADJUST ;
 int AXIS_OFFSET ;
 int CALIBRATION_DONE ;
 int CALIBRATION_MASK ;
 int CALIBRATION_REG1 ;
 int CALIBRATION_REG2 ;
 int CALIBRATION_REG3 ;
 int CALIBRATION_RETRY_MAX ;
 int COORD_UPDATE ;
 int DUALTOUCH_REG_ON ;
 int DUALTOUCH_STABILIZE_ON ;
 int EBUSY ;
 int FORCE_CALIBRATION ;
 int FORCE_CALIBRATION_OFF ;
 int FORCE_CALIBRATION_ON ;
 int INT_ALL ;
 int INT_CLEAR ;
 int INT_MASK ;
 int INT_STATUS ;
 int PRM1_X_H ;
 int PRM1_X_L ;
 int PRM1_Y_H ;
 int PRM1_Y_L ;
 int PROGRAM_LOAD_DONE ;
 int READ_CALIB_BUF (int ) ;
 int SAMPLING_DELAY ;
 int SLEEP_IN ;
 int SLEEP_OUT ;
 int TEST1 ;
 int TOUCH ;
 int TOUCH_DETECT ;
 int TOUCH_GESTURE ;
 int dev_warn (struct device*,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mdelay (int) ;
 int rohm_i2c_burst_read (struct i2c_client*,int ,int*,int) ;

__attribute__((used)) static int rohm_ts_manual_calibration(struct rohm_ts_data *ts)
{
 struct i2c_client *client = ts->client;
 struct device *dev = &client->dev;
 u8 buf[33];

 int retry;
 bool success = 0;
 bool first_time = 1;
 bool calibration_done;

 u8 reg1, reg2, reg3;
 s32 reg1_orig, reg2_orig, reg3_orig;
 s32 val;

 int calib_x = 0, calib_y = 0;
 int reg_x, reg_y;
 int err_x, err_y;

 int error, error2;
 int i;

 reg1_orig = i2c_smbus_read_byte_data(client, CALIBRATION_REG1);
 if (reg1_orig < 0)
  return reg1_orig;

 reg2_orig = i2c_smbus_read_byte_data(client, CALIBRATION_REG2);
 if (reg2_orig < 0)
  return reg2_orig;

 reg3_orig = i2c_smbus_read_byte_data(client, CALIBRATION_REG3);
 if (reg3_orig < 0)
  return reg3_orig;

 error = i2c_smbus_write_byte_data(client, INT_MASK,
       COORD_UPDATE | SLEEP_IN | SLEEP_OUT |
       PROGRAM_LOAD_DONE);
 if (error)
  goto out;

 error = i2c_smbus_write_byte_data(client, TEST1,
       DUALTOUCH_STABILIZE_ON);
 if (error)
  goto out;

 for (retry = 0; retry < CALIBRATION_RETRY_MAX; retry++) {

  mdelay(2 * SAMPLING_DELAY);



  error = rohm_i2c_burst_read(client, PRM1_X_H, buf, sizeof(buf));
  if (error)
   goto out;

  if (buf[((TOUCH) - PRM1_X_H)] & TOUCH_DETECT)
   continue;

  if (first_time) {

   calib_x = ((int)buf[((PRM1_X_H) - PRM1_X_H)] << 2 |
    buf[((PRM1_X_L) - PRM1_X_H)]) - AXIS_OFFSET;
   calib_y = ((int)buf[((PRM1_Y_H) - PRM1_X_H)] << 2 |
    buf[((PRM1_Y_L) - PRM1_X_H)]) - AXIS_OFFSET;

   error = i2c_smbus_write_byte_data(client, TEST1,
    DUALTOUCH_STABILIZE_ON | DUALTOUCH_REG_ON);
   if (error)
    goto out;

   first_time = 0;
  } else {

   err_x = (int)buf[((PRM1_X_H) - PRM1_X_H)] << 2 |
    buf[((PRM1_X_L) - PRM1_X_H)];
   err_y = (int)buf[((PRM1_Y_H) - PRM1_X_H)] << 2 |
    buf[((PRM1_Y_L) - PRM1_X_H)];


   if (err_x <= 4)
    calib_x -= AXIS_ADJUST;
   else if (err_x >= 60)
    calib_x += AXIS_ADJUST;


   if (err_y <= 4)
    calib_y -= AXIS_ADJUST;
   else if (err_y >= 60)
    calib_y += AXIS_ADJUST;
  }


  reg_x = calib_x + ((calib_x & 0x200) << 1);
  reg_y = calib_y + ((calib_y & 0x200) << 1);


  reg1 = reg_x >> 3;
  reg2 = (reg_y & 0x7) << 4 | (reg_x & 0x7);
  reg3 = reg_y >> 3;

  error = i2c_smbus_write_byte_data(client,
        CALIBRATION_REG1, reg1);
  if (error)
   goto out;

  error = i2c_smbus_write_byte_data(client,
        CALIBRATION_REG2, reg2);
  if (error)
   goto out;

  error = i2c_smbus_write_byte_data(client,
        CALIBRATION_REG3, reg3);
  if (error)
   goto out;




  error = i2c_smbus_write_byte_data(client, FORCE_CALIBRATION,
        FORCE_CALIBRATION_OFF);
  if (error)
   goto out;

  error = i2c_smbus_write_byte_data(client, FORCE_CALIBRATION,
        FORCE_CALIBRATION_ON);
  if (error)
   goto out;


  error = i2c_smbus_write_byte_data(client, INT_CLEAR, 0xff);
  if (error)
   goto out;




  calibration_done = 0;

  for (i = 0; i < 10; i++) {
   mdelay(SAMPLING_DELAY);

   val = i2c_smbus_read_byte_data(client, TOUCH_GESTURE);
   if (!(val & CALIBRATION_MASK)) {
    calibration_done = 1;
    break;
   } else if (val < 0) {
    error = val;
    goto out;
   }
  }

  if (calibration_done) {
   val = i2c_smbus_read_byte_data(client, INT_STATUS);
   if (val == CALIBRATION_DONE) {
    success = 1;
    break;
   } else if (val < 0) {
    error = val;
    goto out;
   }
  } else {
   dev_warn(dev, "calibration timeout\n");
  }
 }

 if (!success) {
  error = i2c_smbus_write_byte_data(client, CALIBRATION_REG1,
        reg1_orig);
  if (error)
   goto out;

  error = i2c_smbus_write_byte_data(client, CALIBRATION_REG2,
        reg2_orig);
  if (error)
   goto out;

  error = i2c_smbus_write_byte_data(client, CALIBRATION_REG3,
        reg3_orig);
  if (error)
   goto out;


  error = i2c_smbus_write_byte_data(client, TEST1,
        DUALTOUCH_STABILIZE_ON |
        DUALTOUCH_REG_ON);
  if (error)
   goto out;


  mdelay(10 * SAMPLING_DELAY);

  error = -EBUSY;
 }

out:
 error2 = i2c_smbus_write_byte_data(client, INT_MASK, INT_ALL);
 if (!error2)

  error2 = i2c_smbus_write_byte_data(client, INT_CLEAR, 0xff);

 return error ? error : error2;
}
