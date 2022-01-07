
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ctx; } ;
struct dce_mem_input {TYPE_1__ base; } ;


 int GRPH_SURFACE_UPDATE_PENDING_MODE ;
 int UNP_FLIP_CONTROL ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmUNP_FLIP_CONTROL ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void set_flip_control(
 struct dce_mem_input *mem_input110,
 bool immediate)
{
 uint32_t value = 0;

 value = dm_read_reg(
   mem_input110->base.ctx,
   mmUNP_FLIP_CONTROL);

 set_reg_field_value(value, 1,
   UNP_FLIP_CONTROL,
   GRPH_SURFACE_UPDATE_PENDING_MODE);

 dm_write_reg(
   mem_input110->base.ctx,
   mmUNP_FLIP_CONTROL,
   value);
}
