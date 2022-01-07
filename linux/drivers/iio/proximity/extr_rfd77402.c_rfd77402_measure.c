
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfd77402_data {int client; } ;


 int EIO ;
 int ETIMEDOUT ;
 int RFD77402_CMD_MCPU_OFF ;
 int RFD77402_CMD_MCPU_ON ;
 int RFD77402_CMD_R ;
 int RFD77402_CMD_SINGLE ;
 int RFD77402_CMD_VALID ;
 int RFD77402_ICSR ;
 int RFD77402_ICSR_RESULT ;
 int RFD77402_RESULT_DIST_MASK ;
 int RFD77402_RESULT_ERR_MASK ;
 int RFD77402_RESULT_R ;
 int RFD77402_RESULT_VALID ;
 int RFD77402_STATUS_MCPU_OFF ;
 int RFD77402_STATUS_MCPU_ON ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_read_word_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int msleep (int) ;
 int rfd77402_set_state (struct rfd77402_data*,int ,int ) ;

__attribute__((used)) static int rfd77402_measure(struct rfd77402_data *data)
{
 int ret;
 int tries = 10;

 ret = rfd77402_set_state(data, RFD77402_CMD_MCPU_ON,
     RFD77402_STATUS_MCPU_ON);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte_data(data->client, RFD77402_CMD_R,
     RFD77402_CMD_SINGLE |
     RFD77402_CMD_VALID);
 if (ret < 0)
  goto err;

 while (tries-- > 0) {
  ret = i2c_smbus_read_byte_data(data->client, RFD77402_ICSR);
  if (ret < 0)
   goto err;
  if (ret & RFD77402_ICSR_RESULT)
   break;
  msleep(20);
 }

 if (tries < 0) {
  ret = -ETIMEDOUT;
  goto err;
 }

 ret = i2c_smbus_read_word_data(data->client, RFD77402_RESULT_R);
 if (ret < 0)
  goto err;

 if ((ret & RFD77402_RESULT_ERR_MASK) ||
     !(ret & RFD77402_RESULT_VALID)) {
  ret = -EIO;
  goto err;
 }

 return (ret & RFD77402_RESULT_DIST_MASK) >> 2;

err:
 rfd77402_set_state(data, RFD77402_CMD_MCPU_OFF,
      RFD77402_STATUS_MCPU_OFF);
 return ret;
}
