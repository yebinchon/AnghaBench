
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct i2c_request_transaction_data {scalar_t__ status; int data; int length; scalar_t__ address; int action; } ;
struct i2c_payload {int address; int data; int length; int write; } ;
struct dce_i2c_sw {int dummy; } ;


 int DCE_I2C_TRANSACTION_ACTION_I2C_READ ;
 int DCE_I2C_TRANSACTION_ACTION_I2C_READ_MOT ;
 int DCE_I2C_TRANSACTION_ACTION_I2C_WRITE ;
 int DCE_I2C_TRANSACTION_ACTION_I2C_WRITE_MOT ;
 scalar_t__ I2C_CHANNEL_OPERATION_ENGINE_BUSY ;
 scalar_t__ I2C_CHANNEL_OPERATION_FAILED ;
 int dce_i2c_sw_engine_submit_channel_request (struct dce_i2c_sw*,struct i2c_request_transaction_data*) ;

bool dce_i2c_sw_engine_submit_payload(
 struct dce_i2c_sw *engine,
 struct i2c_payload *payload,
 bool middle_of_transaction)
{
 struct i2c_request_transaction_data request;

 if (!payload->write)
  request.action = middle_of_transaction ?
   DCE_I2C_TRANSACTION_ACTION_I2C_READ_MOT :
   DCE_I2C_TRANSACTION_ACTION_I2C_READ;
 else
  request.action = middle_of_transaction ?
   DCE_I2C_TRANSACTION_ACTION_I2C_WRITE_MOT :
   DCE_I2C_TRANSACTION_ACTION_I2C_WRITE;

 request.address = (uint8_t) ((payload->address << 1) | !payload->write);
 request.length = payload->length;
 request.data = payload->data;

 dce_i2c_sw_engine_submit_channel_request(engine, &request);

 if ((request.status == I2C_CHANNEL_OPERATION_ENGINE_BUSY) ||
  (request.status == I2C_CHANNEL_OPERATION_FAILED))
  return 0;

 return 1;
}
