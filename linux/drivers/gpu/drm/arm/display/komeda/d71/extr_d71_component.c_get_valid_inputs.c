
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct block_header {int * input_ids; int pipeline_info; } ;


 int BIT (int) ;
 int PIPELINE_INFO_N_VALID_INPUTS (int ) ;
 int get_resources_id (int ,int *,int*) ;

__attribute__((used)) static u32 get_valid_inputs(struct block_header *blk)
{
 u32 valid_inputs = 0, comp_id;
 int i;

 for (i = 0; i < PIPELINE_INFO_N_VALID_INPUTS(blk->pipeline_info); i++) {
  get_resources_id(blk->input_ids[i], ((void*)0), &comp_id);
  if (comp_id == 0xFFFFFFFF)
   continue;
  valid_inputs |= BIT(comp_id);
 }

 return valid_inputs;
}
