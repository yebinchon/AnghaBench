
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;
struct awg_code_generation_params {size_t instruction_offset; long* ram_code; } ;
typedef enum opcode { ____Placeholder_opcode } opcode ;


 long AWG_MAX_ARG ;
 size_t AWG_MAX_INST ;
 int AWG_OPCODE_OFFSET ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
__attribute__((used)) static int awg_generate_instr(enum opcode opcode,
         long int arg,
         long int mux_sel,
         long int data_en,
         struct awg_code_generation_params *fwparams)
{
 u32 instruction = 0;
 u32 mux = (mux_sel << 8) & 0x1ff;
 u32 data_enable = (data_en << 9) & 0x2ff;
 long int arg_tmp = arg;
 while (arg_tmp > 0) {
  arg = arg_tmp;
  if (fwparams->instruction_offset >= AWG_MAX_INST) {
   DRM_ERROR("too many number of instructions\n");
   return -EINVAL;
  }

  switch (opcode) {
  case 129:


   arg--;
   arg_tmp--;

   if (arg < 0) {

    return 0;
   }

   if (arg == 0) {



    opcode = 130;
    break;
   }

   mux = 0;
   data_enable = 0;
   arg &= AWG_MAX_ARG;
   break;
  case 134:
  case 133:
   if (arg == 0) {

    return 0;
   }

   mux = 0;
   data_enable = 0;
   arg &= AWG_MAX_ARG;
   break;
  case 135:
   mux = 0;
   data_enable = 0;
   arg |= 0x40;
   arg &= AWG_MAX_ARG;
   break;
  case 128:
   arg = 0;
   break;
  case 130:
  case 131:
  case 132:
  case 136:
   arg &= (0x0ff);
   break;
  default:
   DRM_ERROR("instruction %d does not exist\n", opcode);
   return -EINVAL;
  }

  arg_tmp = arg_tmp - arg;

  arg = ((arg + mux) + data_enable);

  instruction = ((opcode) << AWG_OPCODE_OFFSET) | arg;
  fwparams->ram_code[fwparams->instruction_offset] =
   instruction & (0x3fff);
  fwparams->instruction_offset++;
 }
 return 0;
}
