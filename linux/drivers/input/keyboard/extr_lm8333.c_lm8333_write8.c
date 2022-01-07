
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm8333 {int client; } ;


 int LM8333_READ_RETRIES ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

int lm8333_write8(struct lm8333 *lm8333, u8 cmd, u8 val)
{
 int retries = 0, ret;

 do {
  ret = i2c_smbus_write_byte_data(lm8333->client, cmd, val);
 } while (ret < 0 && retries++ < LM8333_READ_RETRIES);

 return ret;
}
