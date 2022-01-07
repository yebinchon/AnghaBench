
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int SMU75_Discrete_DpmTable ;
 int SMU75_SoftRegisters ;







 int offsetof (int ,int const) ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static uint32_t vegam_get_offsetof(uint32_t type, uint32_t member)
{
 switch (type) {
 case 133:
  switch (member) {
  case 137:
   return offsetof(SMU75_SoftRegisters, 137);
  case 128:
   return offsetof(SMU75_SoftRegisters, 128);
  case 144:
   return offsetof(SMU75_SoftRegisters, 144);
  case 143:
   return offsetof(SMU75_SoftRegisters, 143);
  case 135:
   return offsetof(SMU75_SoftRegisters, 135);
  case 130:
   return offsetof(SMU75_SoftRegisters, 130);
  case 132:
   return offsetof(SMU75_SoftRegisters, 132);
  case 142:
   return offsetof(SMU75_SoftRegisters, 142);
  case 141:
   return offsetof(SMU75_SoftRegisters, 141);
  case 139:
   return offsetof(SMU75_SoftRegisters, 139);
  case 138:
   return offsetof(SMU75_SoftRegisters, 138);
  case 140:
   return offsetof(SMU75_SoftRegisters, 140);
  }
  break;
 case 134:
  switch (member) {
  case 131:
   return offsetof(SMU75_Discrete_DpmTable, 131);
  case 129:
   return offsetof(SMU75_Discrete_DpmTable, 129);
  case 136:
   return offsetof(SMU75_Discrete_DpmTable, 136);
  }
  break;
 }
 pr_warn("can't get the offset of type %x member %x\n", type, member);
 return 0;
}
