
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int client; } ;
typedef int ssize_t ;


 int i2c_smbus_read_i2c_block_data (int ,int ,size_t,int *) ;

ssize_t cyapa_i2c_reg_read_block(struct cyapa *cyapa, u8 reg, size_t len,
     u8 *values)
{
 return i2c_smbus_read_i2c_block_data(cyapa->client, reg, len, values);
}
