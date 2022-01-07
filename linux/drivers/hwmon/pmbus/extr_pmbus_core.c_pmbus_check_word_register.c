
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int _pmbus_read_word_data ;
 int pmbus_check_register (struct i2c_client*,int ,int,int) ;

bool pmbus_check_word_register(struct i2c_client *client, int page, int reg)
{
 return pmbus_check_register(client, _pmbus_read_word_data, page, reg);
}
