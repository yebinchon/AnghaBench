
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp2a_data {int i2c_client; } ;


 int GP2A_ADDR_OPMOD ;
 int GP2A_CTRL_SSD ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int gp2a_enable(struct gp2a_data *dt)
{
 return i2c_smbus_write_byte_data(dt->i2c_client, GP2A_ADDR_OPMOD,
      GP2A_CTRL_SSD);
}
