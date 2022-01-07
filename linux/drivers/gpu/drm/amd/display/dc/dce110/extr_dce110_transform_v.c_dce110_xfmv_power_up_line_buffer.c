
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct transform {int dummy; } ;
struct TYPE_2__ {int ctx; } ;
struct dce_transform {TYPE_1__ base; int lb_memory_size; } ;


 int LBV_MEMORY_CTRL ;
 int LB_MEMORY_CONFIG ;
 int LB_MEMORY_SIZE ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmLBV_MEMORY_CTRL ;
 int set_reg_field_value (int ,int ,int ,int ) ;

__attribute__((used)) static bool dce110_xfmv_power_up_line_buffer(struct transform *xfm)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);
 uint32_t value;

 value = dm_read_reg(xfm_dce->base.ctx, mmLBV_MEMORY_CTRL);


 set_reg_field_value(value, 0, LBV_MEMORY_CTRL, LB_MEMORY_CONFIG);

 set_reg_field_value(value, xfm_dce->lb_memory_size, LBV_MEMORY_CTRL,
   LB_MEMORY_SIZE);

 dm_write_reg(xfm_dce->base.ctx, mmLBV_MEMORY_CTRL, value);

 return 1;
}
