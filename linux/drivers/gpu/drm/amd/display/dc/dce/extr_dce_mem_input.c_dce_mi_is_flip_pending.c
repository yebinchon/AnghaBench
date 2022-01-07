
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mem_input {int request_address; int current_address; } ;
struct dce_mem_input {int dummy; } ;


 int GRPH_SURFACE_UPDATE_PENDING ;
 int GRPH_UPDATE ;
 int REG_GET (int ,int ,scalar_t__*) ;
 struct dce_mem_input* TO_DCE_MEM_INPUT (struct mem_input*) ;

__attribute__((used)) static bool dce_mi_is_flip_pending(struct mem_input *mem_input)
{
 struct dce_mem_input *dce_mi = TO_DCE_MEM_INPUT(mem_input);
 uint32_t update_pending;

 REG_GET(GRPH_UPDATE, GRPH_SURFACE_UPDATE_PENDING, &update_pending);
 if (update_pending)
  return 1;

 mem_input->current_address = mem_input->request_address;
 return 0;
}
