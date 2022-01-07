
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int ctrl_reg1; int client; } ;


 int MMA8452_CTRL_ACTIVE ;
 int MMA8452_CTRL_REG1 ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int mma8452_standby(struct mma8452_data *data)
{
 return i2c_smbus_write_byte_data(data->client, MMA8452_CTRL_REG1,
     data->ctrl_reg1 & ~MMA8452_CTRL_ACTIVE);
}
