
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmbus_data {int currpage; TYPE_1__* info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int* func; } ;


 int EIO ;
 int PMBUS_PAGE ;
 int PMBUS_PAGE_VIRTUAL ;
 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

int pmbus_set_page(struct i2c_client *client, int page)
{
 struct pmbus_data *data = i2c_get_clientdata(client);
 int rv;

 if (page < 0 || page == data->currpage)
  return 0;

 if (!(data->info->func[page] & PMBUS_PAGE_VIRTUAL)) {
  rv = i2c_smbus_write_byte_data(client, PMBUS_PAGE, page);
  if (rv < 0)
   return rv;

  rv = i2c_smbus_read_byte_data(client, PMBUS_PAGE);
  if (rv < 0)
   return rv;

  if (rv != page)
   return -EIO;
 }

 data->currpage = page;

 return 0;
}
