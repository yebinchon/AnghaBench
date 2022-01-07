
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i2c_payloads {int payloads; } ;
struct i2c_payload {int dummy; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ dal_vector_construct (int *,struct dc_context*,int ,int) ;
 int kfree (struct i2c_payloads*) ;
 struct i2c_payloads* kzalloc (int,int ) ;

__attribute__((used)) static struct i2c_payloads *dal_ddc_i2c_payloads_create(struct dc_context *ctx, uint32_t count)
{
 struct i2c_payloads *payloads;

 payloads = kzalloc(sizeof(struct i2c_payloads), GFP_KERNEL);

 if (!payloads)
  return ((void*)0);

 if (dal_vector_construct(
  &payloads->payloads, ctx, count, sizeof(struct i2c_payload)))
  return payloads;

 kfree(payloads);
 return ((void*)0);

}
