
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SMU72_MAX_ENTRIES_SMIO ;
 int SMU72_MAX_LEVELS_GRAPHICS ;
 int SMU72_MAX_LEVELS_LINK ;
 int SMU72_MAX_LEVELS_MEMORY ;
 int SMU72_MAX_LEVELS_MVDD ;
 int SMU72_MAX_LEVELS_VDDC ;
 int SMU72_MAX_LEVELS_VDDCI ;
 int SMU72_MAX_LEVELS_VDDGFX ;
 int pr_warn (char*,int) ;

__attribute__((used)) static uint32_t tonga_get_mac_definition(uint32_t value)
{
 switch (value) {
 case 134:
  return SMU72_MAX_LEVELS_GRAPHICS;
 case 132:
  return SMU72_MAX_LEVELS_MEMORY;
 case 133:
  return SMU72_MAX_LEVELS_LINK;
 case 135:
  return SMU72_MAX_ENTRIES_SMIO;
 case 130:
  return SMU72_MAX_LEVELS_VDDC;
 case 128:
  return SMU72_MAX_LEVELS_VDDGFX;
 case 129:
  return SMU72_MAX_LEVELS_VDDCI;
 case 131:
  return SMU72_MAX_LEVELS_MVDD;
 }
 pr_warn("can't get the mac value %x\n", value);

 return 0;
}
