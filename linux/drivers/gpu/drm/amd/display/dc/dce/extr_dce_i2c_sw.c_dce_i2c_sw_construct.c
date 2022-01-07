
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_i2c_sw {struct dc_context* ctx; } ;
struct dc_context {int dummy; } ;



void dce_i2c_sw_construct(
 struct dce_i2c_sw *dce_i2c_sw,
 struct dc_context *ctx)
{
 dce_i2c_sw->ctx = ctx;
}
