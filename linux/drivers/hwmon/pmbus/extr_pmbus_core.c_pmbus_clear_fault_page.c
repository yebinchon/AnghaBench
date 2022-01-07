
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int PMBUS_CLEAR_FAULTS ;
 int _pmbus_write_byte (struct i2c_client*,int,int ) ;

__attribute__((used)) static void pmbus_clear_fault_page(struct i2c_client *client, int page)
{
 _pmbus_write_byte(client, page, PMBUS_CLEAR_FAULTS);
}
