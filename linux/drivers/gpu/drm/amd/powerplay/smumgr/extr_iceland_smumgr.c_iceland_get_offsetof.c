
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int SMU71_Discrete_DpmTable ;
 int SMU71_SoftRegisters ;





 int offsetof (int ,int const) ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static uint32_t iceland_get_offsetof(uint32_t type, uint32_t member)
{
 switch (type) {
 case 131:
  switch (member) {
  case 135:
   return offsetof(SMU71_SoftRegisters, 135);
  case 128:
   return offsetof(SMU71_SoftRegisters, 128);
  case 142:
   return offsetof(SMU71_SoftRegisters, 142);
  case 141:
   return offsetof(SMU71_SoftRegisters, 141);
  case 133:
   return offsetof(SMU71_SoftRegisters, 133);
  case 129:
   return offsetof(SMU71_SoftRegisters, 129);
  case 130:
   return offsetof(SMU71_SoftRegisters, 130);
  case 140:
   return offsetof(SMU71_SoftRegisters, 140);
  case 139:
   return offsetof(SMU71_SoftRegisters, 139);
  case 137:
   return offsetof(SMU71_SoftRegisters, 137);
  case 136:
   return offsetof(SMU71_SoftRegisters, 136);
  case 138:
   return offsetof(SMU71_SoftRegisters, 138);
  }
  break;
 case 132:
  switch (member) {
  case 134:
   return offsetof(SMU71_Discrete_DpmTable, 134);
  }
  break;
 }
 pr_warn("can't get the offset of type %x member %x\n", type, member);
 return 0;
}
