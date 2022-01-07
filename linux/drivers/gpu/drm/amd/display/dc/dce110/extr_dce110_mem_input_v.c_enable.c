
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ctx; } ;
struct dce_mem_input {TYPE_1__ base; } ;


 int GRPH_ENABLE ;
 int UNP_GRPH_ENABLE ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmUNP_GRPH_ENABLE ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void enable(struct dce_mem_input *mem_input110)
{
 uint32_t value = 0;

 value = dm_read_reg(mem_input110->base.ctx, mmUNP_GRPH_ENABLE);
 set_reg_field_value(value, 1, UNP_GRPH_ENABLE, GRPH_ENABLE);
 dm_write_reg(mem_input110->base.ctx,
  mmUNP_GRPH_ENABLE,
  value);
}
