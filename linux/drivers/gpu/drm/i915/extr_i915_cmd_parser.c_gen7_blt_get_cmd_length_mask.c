
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int DRM_DEBUG_DRIVER (char*,scalar_t__) ;
 scalar_t__ INSTR_BC_CLIENT ;
 scalar_t__ INSTR_CLIENT_SHIFT ;
 scalar_t__ INSTR_MI_CLIENT ;

__attribute__((used)) static u32 gen7_blt_get_cmd_length_mask(u32 cmd_header)
{
 u32 client = cmd_header >> INSTR_CLIENT_SHIFT;

 if (client == INSTR_MI_CLIENT)
  return 0x3F;
 else if (client == INSTR_BC_CLIENT)
  return 0xFF;

 DRM_DEBUG_DRIVER("CMD: Abnormal blt cmd length! 0x%08X\n", cmd_header);
 return 0;
}
