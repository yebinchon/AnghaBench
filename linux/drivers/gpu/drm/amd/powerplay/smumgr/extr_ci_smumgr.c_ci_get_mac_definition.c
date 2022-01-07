
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SMU7_MAX_ENTRIES_SMIO ;
 int SMU7_MAX_LEVELS_GRAPHICS ;
 int SMU7_MAX_LEVELS_LINK ;
 int SMU7_MAX_LEVELS_MEMORY ;
 int SMU7_MAX_LEVELS_MVDD ;
 int SMU7_MAX_LEVELS_VDDC ;
 int SMU7_MAX_LEVELS_VDDCI ;







 int pr_debug (char*,int) ;

__attribute__((used)) static uint32_t ci_get_mac_definition(uint32_t value)
{
 switch (value) {
 case 133:
  return SMU7_MAX_LEVELS_GRAPHICS;
 case 131:
  return SMU7_MAX_LEVELS_MEMORY;
 case 132:
  return SMU7_MAX_LEVELS_LINK;
 case 134:
  return SMU7_MAX_ENTRIES_SMIO;
 case 129:
  return SMU7_MAX_LEVELS_VDDC;
 case 128:
  return SMU7_MAX_LEVELS_VDDCI;
 case 130:
  return SMU7_MAX_LEVELS_MVDD;
 }

 pr_debug("can't get the mac of %x\n", value);
 return 0;
}
