
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct i2c_request_transaction_data {int action; int status; int data; int length; int address; } ;
struct ddc {int dummy; } ;
struct dce_i2c_sw {int clock_delay; int ctx; struct ddc* ddc; } ;






 int I2C_CHANNEL_OPERATION_FAILED ;
 int I2C_CHANNEL_OPERATION_SUCCEEDED ;
 int i2c_read_sw (int ,struct ddc*,int,int ,int ,int ) ;
 int i2c_write_sw (int ,struct ddc*,int,int ,int ,int ) ;
 int start_sync_sw (int ,struct ddc*,int) ;
 int stop_sync_sw (int ,struct ddc*,int) ;

void dce_i2c_sw_engine_submit_channel_request(
 struct dce_i2c_sw *engine,
 struct i2c_request_transaction_data *req)
{
 struct ddc *ddc = engine->ddc;
 uint16_t clock_delay_div_4 = engine->clock_delay >> 2;



 bool result = start_sync_sw(engine->ctx, ddc, clock_delay_div_4);



 if (result) {
  switch (req->action) {
  case 129:
  case 128:
   result = i2c_write_sw(engine->ctx, ddc, clock_delay_div_4,
    req->address, req->length, req->data);
  break;
  case 131:
  case 130:
   result = i2c_read_sw(engine->ctx, ddc, clock_delay_div_4,
    req->address, req->length, req->data);
  break;
  default:
   result = 0;
  break;
  }
 }



 if (!result ||
  (req->action == 129) ||
  (req->action == 131))
  if (!stop_sync_sw(engine->ctx, ddc, clock_delay_div_4))
   result = 0;

 req->status = result ?
  I2C_CHANNEL_OPERATION_SUCCEEDED :
  I2C_CHANNEL_OPERATION_FAILED;
}
