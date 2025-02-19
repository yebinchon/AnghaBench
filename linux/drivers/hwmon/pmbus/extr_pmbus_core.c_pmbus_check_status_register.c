
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_data {int (* read_status ) (struct i2c_client*,int) ;int flags; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int PB_CML_FAULT_INVALID_COMMAND ;
 int PB_STATUS_CML ;
 int PMBUS_SKIP_STATUS_CHECK ;
 int PMBUS_STATUS_CML ;
 int _pmbus_read_byte_data (struct i2c_client*,int,int ) ;
 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;
 int pmbus_clear_fault_page (struct i2c_client*,int) ;
 int stub1 (struct i2c_client*,int) ;

__attribute__((used)) static bool pmbus_check_status_register(struct i2c_client *client, int page)
{
 int status;
 struct pmbus_data *data = i2c_get_clientdata(client);

 status = data->read_status(client, page);
 if (status >= 0 && !(data->flags & PMBUS_SKIP_STATUS_CHECK) &&
     (status & PB_STATUS_CML)) {
  status = _pmbus_read_byte_data(client, -1, PMBUS_STATUS_CML);
  if (status < 0 || (status & PB_CML_FAULT_INVALID_COMMAND))
   status = -EIO;
 }

 pmbus_clear_fault_page(client, -1);
 return status >= 0;
}
