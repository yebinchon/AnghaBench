
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dce_i2c_hw {int dummy; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dce112_i2c_hw_construct (struct dce_i2c_hw*,struct dc_context*,size_t,int *,int *,int *) ;
 int * i2c_hw_regs ;
 int i2c_masks ;
 int i2c_shifts ;
 struct dce_i2c_hw* kzalloc (int,int ) ;

struct dce_i2c_hw *dce120_i2c_hw_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct dce_i2c_hw *dce_i2c_hw =
  kzalloc(sizeof(struct dce_i2c_hw), GFP_KERNEL);

 if (!dce_i2c_hw)
  return ((void*)0);

 dce112_i2c_hw_construct(dce_i2c_hw, ctx, inst,
        &i2c_hw_regs[inst], &i2c_shifts, &i2c_masks);

 return dce_i2c_hw;
}
