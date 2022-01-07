
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_i2c_sw {int dummy; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dce_i2c_sw_construct (struct dce_i2c_sw*,struct dc_context*) ;
 struct dce_i2c_sw* kzalloc (int,int ) ;

struct dce_i2c_sw *dce80_i2c_sw_create(
 struct dc_context *ctx)
{
 struct dce_i2c_sw *dce_i2c_sw =
  kzalloc(sizeof(struct dce_i2c_sw), GFP_KERNEL);

 if (!dce_i2c_sw)
  return ((void*)0);

 dce_i2c_sw_construct(dce_i2c_sw, ctx);

 return dce_i2c_sw;
}
