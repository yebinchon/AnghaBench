
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int PMBUS_STATUS_WORD ;
 int _pmbus_read_word_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int pmbus_read_status_word(struct i2c_client *client, int page)
{
 return _pmbus_read_word_data(client, page, PMBUS_STATUS_WORD);
}
