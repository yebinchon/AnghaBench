
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int DRM_DEBUG_DRIVER (char*,scalar_t__) ;
 scalar_t__ INSTR_26_TO_24_MASK ;
 scalar_t__ INSTR_26_TO_24_SHIFT ;
 scalar_t__ INSTR_CLIENT_SHIFT ;
 scalar_t__ INSTR_MEDIA_SUBCLIENT ;
 scalar_t__ INSTR_MI_CLIENT ;
 scalar_t__ INSTR_RC_CLIENT ;
 scalar_t__ INSTR_SUBCLIENT_MASK ;
 scalar_t__ INSTR_SUBCLIENT_SHIFT ;

__attribute__((used)) static u32 gen7_bsd_get_cmd_length_mask(u32 cmd_header)
{
 u32 client = cmd_header >> INSTR_CLIENT_SHIFT;
 u32 subclient =
  (cmd_header & INSTR_SUBCLIENT_MASK) >> INSTR_SUBCLIENT_SHIFT;
 u32 op = (cmd_header & INSTR_26_TO_24_MASK) >> INSTR_26_TO_24_SHIFT;

 if (client == INSTR_MI_CLIENT)
  return 0x3F;
 else if (client == INSTR_RC_CLIENT) {
  if (subclient == INSTR_MEDIA_SUBCLIENT) {
   if (op == 6)
    return 0xFFFF;
   else
    return 0xFFF;
  } else
   return 0xFF;
 }

 DRM_DEBUG_DRIVER("CMD: Abnormal bsd cmd length! 0x%08X\n", cmd_header);
 return 0;
}
