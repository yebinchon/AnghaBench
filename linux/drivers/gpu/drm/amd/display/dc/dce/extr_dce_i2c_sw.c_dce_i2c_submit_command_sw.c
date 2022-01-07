
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct resource_pool {int dummy; } ;
struct i2c_payload {int dummy; } ;
struct i2c_command {int number_of_payloads; struct i2c_payload* payloads; int speed; } ;
struct ddc {int dummy; } ;
struct dce_i2c_sw {int dummy; } ;


 int dce_i2c_sw_engine_set_speed (struct dce_i2c_sw*,int ) ;
 int dce_i2c_sw_engine_submit_payload (struct dce_i2c_sw*,struct i2c_payload*,int) ;
 int release_engine_dce_sw (struct resource_pool*,struct dce_i2c_sw*) ;

bool dce_i2c_submit_command_sw(
 struct resource_pool *pool,
 struct ddc *ddc,
 struct i2c_command *cmd,
 struct dce_i2c_sw *dce_i2c_sw)
{
 uint8_t index_of_payload = 0;
 bool result;

 dce_i2c_sw_engine_set_speed(dce_i2c_sw, cmd->speed);

 result = 1;

 while (index_of_payload < cmd->number_of_payloads) {
  bool mot = (index_of_payload != cmd->number_of_payloads - 1);

  struct i2c_payload *payload = cmd->payloads + index_of_payload;

  if (!dce_i2c_sw_engine_submit_payload(
   dce_i2c_sw, payload, mot)) {
   result = 0;
   break;
  }

  ++index_of_payload;
 }

 release_engine_dce_sw(pool, dce_i2c_sw);

 return result;
}
