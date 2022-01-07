
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct i2c_payload {int * data; scalar_t__ length; } ;
struct dce_i2c_hw {int buffer_used_write; } ;


 int DC_I2C_DATA ;
 int DC_I2C_DATA_RW ;
 int DC_I2C_INDEX ;
 int DC_I2C_INDEX_WRITE ;
 int REG_GET (int ,int ,scalar_t__*) ;
 int REG_SET_3 (int ,int ,int ,int ,int ,int,int ,int) ;

__attribute__((used)) static void process_channel_reply(
 struct dce_i2c_hw *dce_i2c_hw,
 struct i2c_payload *reply)
{
 uint32_t length = reply->length;
 uint8_t *buffer = reply->data;

 REG_SET_3(DC_I2C_DATA, 0,
   DC_I2C_INDEX, dce_i2c_hw->buffer_used_write,
   DC_I2C_DATA_RW, 1,
   DC_I2C_INDEX_WRITE, 1);

 while (length) {






  uint32_t i2c_data;

  REG_GET(DC_I2C_DATA, DC_I2C_DATA, &i2c_data);
  *buffer++ = i2c_data;

  --length;
 }
}
