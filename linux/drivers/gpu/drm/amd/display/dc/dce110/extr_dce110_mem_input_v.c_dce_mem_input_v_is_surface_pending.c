
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mem_input {int request_address; int current_address; } ;
struct TYPE_2__ {int ctx; } ;
struct dce_mem_input {TYPE_1__ base; } ;


 int GRPH_SURFACE_UPDATE_PENDING ;
 struct dce_mem_input* TO_DCE_MEM_INPUT (struct mem_input*) ;
 int UNP_GRPH_UPDATE ;
 int dm_read_reg (int ,int ) ;
 scalar_t__ get_reg_field_value (int ,int ,int ) ;
 int mmUNP_GRPH_UPDATE ;

bool dce_mem_input_v_is_surface_pending(struct mem_input *mem_input)
{
 struct dce_mem_input *mem_input110 = TO_DCE_MEM_INPUT(mem_input);
 uint32_t value;

 value = dm_read_reg(mem_input110->base.ctx, mmUNP_GRPH_UPDATE);

 if (get_reg_field_value(value, UNP_GRPH_UPDATE,
   GRPH_SURFACE_UPDATE_PENDING))
  return 1;

 mem_input->current_address = mem_input->request_address;
 return 0;
}
