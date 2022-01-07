
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;


 int MAX_RETRIES ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int mdelay (int) ;

__attribute__((used)) static u16 lm93_read_word(struct i2c_client *client, u8 reg)
{
 int value, i;


 for (i = 1; i <= MAX_RETRIES; i++) {
  value = i2c_smbus_read_word_data(client, reg);
  if (value >= 0) {
   return value;
  } else {
   dev_warn(&client->dev,
     "lm93: read word data failed, address 0x%02x.\n",
     reg);
   mdelay(i + 3);
  }

 }


 dev_err(&client->dev, "lm93: All read word retries failed!!\n");
 return 0;
}
