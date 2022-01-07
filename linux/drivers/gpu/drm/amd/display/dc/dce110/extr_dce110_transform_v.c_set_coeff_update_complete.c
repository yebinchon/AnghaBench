
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ctx; } ;
struct dce_transform {TYPE_1__ base; } ;


 int SCLV_UPDATE ;
 int SCL_COEF_UPDATE_COMPLETE ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmSCLV_UPDATE ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void set_coeff_update_complete(
  struct dce_transform *xfm_dce)
{
 uint32_t value;

 value = dm_read_reg(xfm_dce->base.ctx, mmSCLV_UPDATE);
 set_reg_field_value(value, 1, SCLV_UPDATE, SCL_COEF_UPDATE_COMPLETE);
 dm_write_reg(xfm_dce->base.ctx, mmSCLV_UPDATE, value);
}
