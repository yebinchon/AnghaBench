
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ctx; } ;
struct dce_transform {TYPE_1__ base; } ;


 int COL_MAN_INPUT_GAMMA_CONTROL1 ;
 int INPUT_GAMMA_MODE ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCOL_MAN_INPUT_GAMMA_CONTROL1 ;
 int set_reg_field_value (int ,int ,int ,int ) ;

__attribute__((used)) static void set_bypass_input_gamma(struct dce_transform *xfm_dce)
{
 uint32_t value;

 value = dm_read_reg(xfm_dce->base.ctx,
   mmCOL_MAN_INPUT_GAMMA_CONTROL1);

 set_reg_field_value(
    value,
    0,
    COL_MAN_INPUT_GAMMA_CONTROL1,
    INPUT_GAMMA_MODE);

 dm_write_reg(xfm_dce->base.ctx,
   mmCOL_MAN_INPUT_GAMMA_CONTROL1, value);
}
