
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ctx; } ;
struct dce_transform {TYPE_1__ base; } ;


 int GAMMA_CORR_CONTROL ;
 int GAMMA_CORR_MODE ;
 int dm_write_reg (int ,int ,int ) ;
 int mmGAMMA_CORR_CONTROL ;
 int set_reg_field_value (int ,int ,int ,int ) ;

__attribute__((used)) static void configure_regamma_mode(struct dce_transform *xfm_dce, uint32_t mode)
{
 uint32_t value = 0;

 set_reg_field_value(
    value,
    mode,
    GAMMA_CORR_CONTROL,
    GAMMA_CORR_MODE);

 dm_write_reg(xfm_dce->base.ctx, mmGAMMA_CORR_CONTROL, 0);
}
