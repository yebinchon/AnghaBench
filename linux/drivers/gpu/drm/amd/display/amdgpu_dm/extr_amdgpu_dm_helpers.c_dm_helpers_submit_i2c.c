
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_msg {int buf; int len; int addr; int flags; } ;
struct i2c_command {int number_of_payloads; TYPE_1__* payloads; } ;
struct dc_link {struct amdgpu_dm_connector* priv; } ;
struct dc_context {int dummy; } ;
struct amdgpu_dm_connector {TYPE_2__* i2c; } ;
struct TYPE_4__ {int base; } ;
struct TYPE_3__ {int data; int length; int address; scalar_t__ write; } ;


 int DRM_ERROR (char*) ;
 int GFP_KERNEL ;
 int I2C_M_RD ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 struct i2c_msg* kcalloc (int,int,int ) ;
 int kfree (struct i2c_msg*) ;

bool dm_helpers_submit_i2c(
  struct dc_context *ctx,
  const struct dc_link *link,
  struct i2c_command *cmd)
{
 struct amdgpu_dm_connector *aconnector = link->priv;
 struct i2c_msg *msgs;
 int i = 0;
 int num = cmd->number_of_payloads;
 bool result;

 if (!aconnector) {
  DRM_ERROR("Failed to found connector for link!");
  return 0;
 }

 msgs = kcalloc(num, sizeof(struct i2c_msg), GFP_KERNEL);

 if (!msgs)
  return 0;

 for (i = 0; i < num; i++) {
  msgs[i].flags = cmd->payloads[i].write ? 0 : I2C_M_RD;
  msgs[i].addr = cmd->payloads[i].address;
  msgs[i].len = cmd->payloads[i].length;
  msgs[i].buf = cmd->payloads[i].data;
 }

 result = i2c_transfer(&aconnector->i2c->base, msgs, num) == num;

 kfree(msgs);

 return result;
}
