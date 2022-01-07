
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int const AverageGraphicsA ;

 int const AverageMemoryA ;







 int const LowSclkInterruptT ;


 int SMU7_Discrete_DpmTable ;
 int SMU7_SoftRegisters ;




 int offsetof (int ,int const) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static uint32_t ci_get_offsetof(uint32_t type, uint32_t member)
{
 switch (type) {
 case 130:
  switch (member) {
  case 134:
   return offsetof(SMU7_SoftRegisters, 134);
  case 128:
   return offsetof(SMU7_SoftRegisters, 128);
  case 141:
   return offsetof(SMU7_SoftRegisters, AverageGraphicsA);
  case 140:
   return offsetof(SMU7_SoftRegisters, AverageMemoryA);
  case 132:
   return offsetof(SMU7_SoftRegisters, 132);
  case 129:
   return offsetof(SMU7_SoftRegisters, 129);
  case 139:
   return offsetof(SMU7_SoftRegisters, 139);
  case 138:
   return offsetof(SMU7_SoftRegisters, 138);
  case 136:
   return offsetof(SMU7_SoftRegisters, 136);
  case 135:
   return offsetof(SMU7_SoftRegisters, 135);
  case 137:
   return offsetof(SMU7_SoftRegisters, 137);
  }
  break;
 case 131:
  switch (member) {
  case 133:
   return offsetof(SMU7_Discrete_DpmTable, LowSclkInterruptT);
  }
  break;
 }
 pr_debug("can't get the offset of type %x member %x\n", type, member);
 return 0;
}
