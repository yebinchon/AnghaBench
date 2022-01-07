
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct i2c_payload {int write; int address; int length; int * data; } ;
struct i2c_command {int number_of_payloads; int speed; int engine; struct i2c_payload* payloads; } ;
struct ddc_service {int link; TYPE_3__* ctx; } ;
struct TYPE_6__ {TYPE_2__* dc; } ;
struct TYPE_4__ {int i2c_speed_in_khz; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int DDC_I2C_COMMAND_ENGINE ;
 int dm_helpers_submit_i2c (TYPE_3__*,int ,struct i2c_command*) ;

__attribute__((used)) static bool i2c_read(
 struct ddc_service *ddc,
 uint32_t address,
 uint8_t *buffer,
 uint32_t len)
{
 uint8_t offs_data = 0;
 struct i2c_payload payloads[2] = {
  {
  .write = 1,
  .address = address,
  .length = 1,
  .data = &offs_data },
  {
  .write = 0,
  .address = address,
  .length = len,
  .data = buffer } };

 struct i2c_command command = {
  .payloads = payloads,
  .number_of_payloads = 2,
  .engine = DDC_I2C_COMMAND_ENGINE,
  .speed = ddc->ctx->dc->caps.i2c_speed_in_khz };

 return dm_helpers_submit_i2c(
   ddc->ctx,
   ddc->link,
   &command);
}
