
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SMU73_MAX_ENTRIES_SMIO ;
 int SMU73_MAX_LEVELS_GRAPHICS ;
 int SMU73_MAX_LEVELS_LINK ;
 int SMU73_MAX_LEVELS_MEMORY ;
 int SMU73_MAX_LEVELS_MVDD ;
 int SMU73_MAX_LEVELS_VDDC ;
 int SMU73_MAX_LEVELS_VDDCI ;
 int SMU73_MAX_LEVELS_VDDGFX ;
 int pr_warn (char*,int) ;

__attribute__((used)) static uint32_t fiji_get_mac_definition(uint32_t value)
{
 switch (value) {
 case 134:
  return SMU73_MAX_LEVELS_GRAPHICS;
 case 132:
  return SMU73_MAX_LEVELS_MEMORY;
 case 133:
  return SMU73_MAX_LEVELS_LINK;
 case 135:
  return SMU73_MAX_ENTRIES_SMIO;
 case 130:
  return SMU73_MAX_LEVELS_VDDC;
 case 128:
  return SMU73_MAX_LEVELS_VDDGFX;
 case 129:
  return SMU73_MAX_LEVELS_VDDCI;
 case 131:
  return SMU73_MAX_LEVELS_MVDD;
 }

 pr_warn("can't get the mac of %x\n", value);
 return 0;
}
