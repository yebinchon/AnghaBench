
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct i2c_request_transaction_data {int action; int address; int status; int * data; scalar_t__ length; } ;
struct dce_i2c_hw {int transaction_count; int buffer_used_bytes; scalar_t__ buffer_used_write; } ;


 int DCE_I2C_TRANSACTION_ACTION_I2C_READ ;
 int DCE_I2C_TRANSACTION_ACTION_I2C_WRITE ;
 int DC_I2C_COUNT0 ;
 int DC_I2C_DATA ;
 int DC_I2C_DATA_RW ;
 int DC_I2C_INDEX ;
 int DC_I2C_INDEX_WRITE ;
 int DC_I2C_RW0 ;
 int DC_I2C_START0 ;
 int DC_I2C_STOP0 ;
 int DC_I2C_STOP_ON_NACK0 ;
 int DC_I2C_TRANSACTION0 ;
 int DC_I2C_TRANSACTION1 ;
 int DC_I2C_TRANSACTION2 ;
 int DC_I2C_TRANSACTION3 ;
 int I2C_CHANNEL_OPERATION_ENGINE_BUSY ;
 scalar_t__ REG_SET_2 (int ,scalar_t__,int ,int,int ,int ) ;
 scalar_t__ REG_SET_4 (int ,int ,int ,int,int ,int ,int ,int ,int ,int) ;
 int REG_UPDATE_5 (int ,int ,int,int ,int,int ,int,int ,scalar_t__,int ,int) ;
 scalar_t__ is_hw_busy (struct dce_i2c_hw*) ;

__attribute__((used)) static bool process_transaction(
 struct dce_i2c_hw *dce_i2c_hw,
 struct i2c_request_transaction_data *request)
{
 uint32_t length = request->length;
 uint8_t *buffer = request->data;

 bool last_transaction = 0;
 uint32_t value = 0;

 if (is_hw_busy(dce_i2c_hw)) {
  request->status = I2C_CHANNEL_OPERATION_ENGINE_BUSY;
  return 0;
 }

 last_transaction = ((dce_i2c_hw->transaction_count == 3) ||
   (request->action == DCE_I2C_TRANSACTION_ACTION_I2C_WRITE) ||
   (request->action & DCE_I2C_TRANSACTION_ACTION_I2C_READ));


 switch (dce_i2c_hw->transaction_count) {
 case 0:
  REG_UPDATE_5(DC_I2C_TRANSACTION0,
     DC_I2C_STOP_ON_NACK0, 1,
     DC_I2C_START0, 1,
     DC_I2C_RW0, 0 != (request->action & DCE_I2C_TRANSACTION_ACTION_I2C_READ),
     DC_I2C_COUNT0, length,
     DC_I2C_STOP0, last_transaction ? 1 : 0);
  break;
 case 1:
  REG_UPDATE_5(DC_I2C_TRANSACTION1,
     DC_I2C_STOP_ON_NACK0, 1,
     DC_I2C_START0, 1,
     DC_I2C_RW0, 0 != (request->action & DCE_I2C_TRANSACTION_ACTION_I2C_READ),
     DC_I2C_COUNT0, length,
     DC_I2C_STOP0, last_transaction ? 1 : 0);
  break;
 case 2:
  REG_UPDATE_5(DC_I2C_TRANSACTION2,
     DC_I2C_STOP_ON_NACK0, 1,
     DC_I2C_START0, 1,
     DC_I2C_RW0, 0 != (request->action & DCE_I2C_TRANSACTION_ACTION_I2C_READ),
     DC_I2C_COUNT0, length,
     DC_I2C_STOP0, last_transaction ? 1 : 0);
  break;
 case 3:
  REG_UPDATE_5(DC_I2C_TRANSACTION3,
     DC_I2C_STOP_ON_NACK0, 1,
     DC_I2C_START0, 1,
     DC_I2C_RW0, 0 != (request->action & DCE_I2C_TRANSACTION_ACTION_I2C_READ),
     DC_I2C_COUNT0, length,
     DC_I2C_STOP0, last_transaction ? 1 : 0);
  break;
 default:

  break;
 }
 if (dce_i2c_hw->transaction_count == 0) {
  value = REG_SET_4(DC_I2C_DATA, 0,
      DC_I2C_DATA_RW, 0,
      DC_I2C_DATA, request->address,
      DC_I2C_INDEX, 0,
      DC_I2C_INDEX_WRITE, 1);
  dce_i2c_hw->buffer_used_write = 0;
 } else
  value = REG_SET_2(DC_I2C_DATA, 0,
     DC_I2C_DATA_RW, 0,
     DC_I2C_DATA, request->address);

 dce_i2c_hw->buffer_used_write++;

 if (!(request->action & DCE_I2C_TRANSACTION_ACTION_I2C_READ)) {
  while (length) {
   REG_SET_2(DC_I2C_DATA, value,
      DC_I2C_INDEX_WRITE, 0,
      DC_I2C_DATA, *buffer++);
   dce_i2c_hw->buffer_used_write++;
   --length;
  }
 }

 ++dce_i2c_hw->transaction_count;
 dce_i2c_hw->buffer_used_bytes += length + 1;

 return last_transaction;
}
