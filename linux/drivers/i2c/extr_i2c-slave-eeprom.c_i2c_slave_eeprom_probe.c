
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct i2c_device_id {int driver_data; } ;
struct TYPE_8__ {int kobj; } ;
struct i2c_client {TYPE_5__ dev; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct TYPE_7__ {unsigned int size; int write; int read; TYPE_1__ attr; } ;
struct eeprom_data {int num_address_bytes; unsigned int address_mask; TYPE_2__ bin; int buffer_lock; void* read_only; scalar_t__ idx_write_cnt; } ;


 int ENOMEM ;
 void* FIELD_GET (int ,int ) ;
 int GFP_KERNEL ;
 int I2C_SLAVE_BYTELEN ;
 int I2C_SLAVE_FLAG_ADDR16 ;
 int I2C_SLAVE_FLAG_RO ;
 int S_IRUSR ;
 int S_IWUSR ;
 struct eeprom_data* devm_kzalloc (TYPE_5__*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct eeprom_data*) ;
 int i2c_slave_eeprom_bin_read ;
 int i2c_slave_eeprom_bin_write ;
 int i2c_slave_eeprom_slave_cb ;
 int i2c_slave_register (struct i2c_client*,int ) ;
 int spin_lock_init (int *) ;
 int sysfs_bin_attr_init (TYPE_2__*) ;
 int sysfs_create_bin_file (int *,TYPE_2__*) ;
 int sysfs_remove_bin_file (int *,TYPE_2__*) ;

__attribute__((used)) static int i2c_slave_eeprom_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct eeprom_data *eeprom;
 int ret;
 unsigned int size = FIELD_GET(I2C_SLAVE_BYTELEN, id->driver_data);
 unsigned int flag_addr16 = FIELD_GET(I2C_SLAVE_FLAG_ADDR16, id->driver_data);

 eeprom = devm_kzalloc(&client->dev, sizeof(struct eeprom_data) + size, GFP_KERNEL);
 if (!eeprom)
  return -ENOMEM;

 eeprom->idx_write_cnt = 0;
 eeprom->num_address_bytes = flag_addr16 ? 2 : 1;
 eeprom->address_mask = size - 1;
 eeprom->read_only = FIELD_GET(I2C_SLAVE_FLAG_RO, id->driver_data);
 spin_lock_init(&eeprom->buffer_lock);
 i2c_set_clientdata(client, eeprom);

 sysfs_bin_attr_init(&eeprom->bin);
 eeprom->bin.attr.name = "slave-eeprom";
 eeprom->bin.attr.mode = S_IRUSR | S_IWUSR;
 eeprom->bin.read = i2c_slave_eeprom_bin_read;
 eeprom->bin.write = i2c_slave_eeprom_bin_write;
 eeprom->bin.size = size;

 ret = sysfs_create_bin_file(&client->dev.kobj, &eeprom->bin);
 if (ret)
  return ret;

 ret = i2c_slave_register(client, i2c_slave_eeprom_slave_cb);
 if (ret) {
  sysfs_remove_bin_file(&client->dev.kobj, &eeprom->bin);
  return ret;
 }

 return 0;
}
