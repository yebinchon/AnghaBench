
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_drvdata {int dev; scalar_t__ pc_has_offset; scalar_t__ edpcsr; } ;


 unsigned long BIT (int) ;
 unsigned long EDPCSR_ARM_INST_MASK ;
 unsigned long EDPCSR_THUMB ;
 unsigned long EDPCSR_THUMB_INST_MASK ;
 int dev_emerg (int ,char*) ;

__attribute__((used)) static unsigned long debug_adjust_pc(struct debug_drvdata *drvdata)
{
 unsigned long arm_inst_offset = 0, thumb_inst_offset = 0;
 unsigned long pc;

 pc = (unsigned long)drvdata->edpcsr;

 if (drvdata->pc_has_offset) {
  arm_inst_offset = 8;
  thumb_inst_offset = 4;
 }


 if (pc & EDPCSR_THUMB) {
  pc = (pc & EDPCSR_THUMB_INST_MASK) - thumb_inst_offset;
  return pc;
 }







 if (pc & BIT(1))
  dev_emerg(drvdata->dev,
     "Instruction offset is implementation defined\n");
 else
  pc = (pc & EDPCSR_ARM_INST_MASK) - arm_inst_offset;

 return pc;
}
