
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int client; } ;


 int MMA8452_FF_MT_CFG ;
 int MMA8452_FF_MT_CFG_OAE ;
 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static int mma8452_freefall_mode_enabled(struct mma8452_data *data)
{
 int val;

 val = i2c_smbus_read_byte_data(data->client, MMA8452_FF_MT_CFG);
 if (val < 0)
  return val;

 return !(val & MMA8452_FF_MT_CFG_OAE);
}
