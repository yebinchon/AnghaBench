
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ARRAY_SIZE (int *) ;
 int INSERT_IMMED_GPRA_CONST (int ,unsigned int) ;
 int INSERT_IMMED_GPRB_CONST (int ,unsigned int) ;
 int * inst_4b ;

__attribute__((used)) static int qat_hal_concat_micro_code(uint64_t *micro_inst,
         unsigned int inst_num, unsigned int size,
         unsigned int addr, unsigned int *value)
{
 int i;
 unsigned int cur_value;
 const uint64_t *inst_arr;
 int fixup_offset;
 int usize = 0;
 int orig_num;

 orig_num = inst_num;
 cur_value = value[0];
 inst_arr = inst_4b;
 usize = ARRAY_SIZE(inst_4b);
 fixup_offset = inst_num;
 for (i = 0; i < usize; i++)
  micro_inst[inst_num++] = inst_arr[i];
 INSERT_IMMED_GPRA_CONST(micro_inst[fixup_offset], (addr));
 fixup_offset++;
 INSERT_IMMED_GPRA_CONST(micro_inst[fixup_offset], 0);
 fixup_offset++;
 INSERT_IMMED_GPRB_CONST(micro_inst[fixup_offset], (cur_value >> 0));
 fixup_offset++;
 INSERT_IMMED_GPRB_CONST(micro_inst[fixup_offset], (cur_value >> 0x10));

 return inst_num - orig_num;
}
