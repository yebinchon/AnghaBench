
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct eeprom_data {int buffer_idx; int* buffer; size_t address_mask; int idx_write_cnt; int buffer_lock; int read_only; int num_address_bytes; } ;
typedef enum i2c_slave_event { ____Placeholder_i2c_slave_event } i2c_slave_event ;







 struct eeprom_data* i2c_get_clientdata (struct i2c_client*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int i2c_slave_eeprom_slave_cb(struct i2c_client *client,
         enum i2c_slave_event event, u8 *val)
{
 struct eeprom_data *eeprom = i2c_get_clientdata(client);

 switch (event) {
 case 129:
  if (eeprom->idx_write_cnt < eeprom->num_address_bytes) {
   if (eeprom->idx_write_cnt == 0)
    eeprom->buffer_idx = 0;
   eeprom->buffer_idx = *val | (eeprom->buffer_idx << 8);
   eeprom->idx_write_cnt++;
  } else {
   if (!eeprom->read_only) {
    spin_lock(&eeprom->buffer_lock);
    eeprom->buffer[eeprom->buffer_idx++ & eeprom->address_mask] = *val;
    spin_unlock(&eeprom->buffer_lock);
   }
  }
  break;

 case 132:

  eeprom->buffer_idx++;

 case 131:
  spin_lock(&eeprom->buffer_lock);
  *val = eeprom->buffer[eeprom->buffer_idx & eeprom->address_mask];
  spin_unlock(&eeprom->buffer_lock);





  break;

 case 130:
 case 128:
  eeprom->idx_write_cnt = 0;
  break;

 default:
  break;
 }

 return 0;
}
