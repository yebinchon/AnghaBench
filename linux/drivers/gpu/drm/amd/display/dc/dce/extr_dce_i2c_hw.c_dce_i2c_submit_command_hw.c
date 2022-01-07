
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct resource_pool {int i2c_hw_buffer_in_use; } ;
struct i2c_payload {int dummy; } ;
struct i2c_command {int number_of_payloads; struct i2c_payload* payloads; int speed; } ;
struct ddc {int dummy; } ;
struct dce_i2c_hw {int * ddc; } ;


 int dal_ddc_close (int *) ;
 int dce_i2c_hw_engine_submit_payload (struct dce_i2c_hw*,struct i2c_payload*,int) ;
 int release_engine (struct dce_i2c_hw*) ;
 int set_speed (struct dce_i2c_hw*,int ) ;

bool dce_i2c_submit_command_hw(
 struct resource_pool *pool,
 struct ddc *ddc,
 struct i2c_command *cmd,
 struct dce_i2c_hw *dce_i2c_hw)
{
 uint8_t index_of_payload = 0;
 bool result;

 set_speed(dce_i2c_hw, cmd->speed);

 result = 1;

 while (index_of_payload < cmd->number_of_payloads) {
  bool mot = (index_of_payload != cmd->number_of_payloads - 1);

  struct i2c_payload *payload = cmd->payloads + index_of_payload;

  if (!dce_i2c_hw_engine_submit_payload(
    dce_i2c_hw, payload, mot)) {
   result = 0;
   break;
  }



  ++index_of_payload;
 }

 pool->i2c_hw_buffer_in_use = 0;

 release_engine(dce_i2c_hw);
 dal_ddc_close(dce_i2c_hw->ddc);

 dce_i2c_hw->ddc = ((void*)0);

 return result;
}
