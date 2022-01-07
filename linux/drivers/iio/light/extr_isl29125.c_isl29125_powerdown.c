
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29125_data {int conf1; int client; } ;


 int ISL29125_CONF1 ;
 int ISL29125_MODE_MASK ;
 int ISL29125_MODE_PD ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int isl29125_powerdown(struct isl29125_data *data)
{
 return i2c_smbus_write_byte_data(data->client, ISL29125_CONF1,
  (data->conf1 & ~ISL29125_MODE_MASK) | ISL29125_MODE_PD);
}
