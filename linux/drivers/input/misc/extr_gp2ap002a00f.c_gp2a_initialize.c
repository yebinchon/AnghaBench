
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp2a_data {int i2c_client; } ;


 int GP2A_ADDR_CYCLE ;
 int GP2A_ADDR_GAIN ;
 int GP2A_ADDR_HYS ;
 int gp2a_disable (struct gp2a_data*) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int gp2a_initialize(struct gp2a_data *dt)
{
 int error;

 error = i2c_smbus_write_byte_data(dt->i2c_client, GP2A_ADDR_GAIN,
       0x08);
 if (error < 0)
  return error;

 error = i2c_smbus_write_byte_data(dt->i2c_client, GP2A_ADDR_HYS,
       0xc2);
 if (error < 0)
  return error;

 error = i2c_smbus_write_byte_data(dt->i2c_client, GP2A_ADDR_CYCLE,
       0x04);
 if (error < 0)
  return error;

 error = gp2a_disable(dt);

 return error;
}
