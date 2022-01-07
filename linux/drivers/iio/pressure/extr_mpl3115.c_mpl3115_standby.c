
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpl3115_data {int ctrl_reg1; int client; } ;


 int MPL3115_CTRL_ACTIVE ;
 int MPL3115_CTRL_REG1 ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int mpl3115_standby(struct mpl3115_data *data)
{
 return i2c_smbus_write_byte_data(data->client, MPL3115_CTRL_REG1,
  data->ctrl_reg1 & ~MPL3115_CTRL_ACTIVE);
}
