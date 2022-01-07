
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bma180_data {int client; } ;


 int BMA180_CHIP_ID ;
 int BMA180_ID_REG_VAL ;
 int ENODEV ;
 int bma180_set_new_data_intr_state (struct bma180_data*,int) ;
 int bma180_set_pmode (struct bma180_data*,int) ;
 int bma180_soft_reset (struct bma180_data*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static int bma180_chip_init(struct bma180_data *data)
{

 int ret = i2c_smbus_read_byte_data(data->client, BMA180_CHIP_ID);

 if (ret < 0)
  return ret;
 if (ret != BMA180_ID_REG_VAL)
  return -ENODEV;

 ret = bma180_soft_reset(data);
 if (ret)
  return ret;




 msleep(20);

 ret = bma180_set_new_data_intr_state(data, 0);
 if (ret)
  return ret;

 return bma180_set_pmode(data, 0);
}
