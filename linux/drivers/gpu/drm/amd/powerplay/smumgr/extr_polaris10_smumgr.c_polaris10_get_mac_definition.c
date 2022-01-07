
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SMU74_MAX_ENTRIES_SMIO ;
 int SMU74_MAX_LEVELS_GRAPHICS ;
 int SMU74_MAX_LEVELS_LINK ;
 int SMU74_MAX_LEVELS_MEMORY ;
 int SMU74_MAX_LEVELS_MVDD ;
 int SMU74_MAX_LEVELS_VDDC ;
 int SMU74_MAX_LEVELS_VDDCI ;
 int SMU74_MAX_LEVELS_VDDGFX ;
 int SMU7_UVD_MCLK_HANDSHAKE_DISABLE ;
 int pr_warn (char*,int) ;

__attribute__((used)) static uint32_t polaris10_get_mac_definition(uint32_t value)
{
 switch (value) {
 case 135:
  return SMU74_MAX_LEVELS_GRAPHICS;
 case 133:
  return SMU74_MAX_LEVELS_MEMORY;
 case 134:
  return SMU74_MAX_LEVELS_LINK;
 case 136:
  return SMU74_MAX_ENTRIES_SMIO;
 case 131:
  return SMU74_MAX_LEVELS_VDDC;
 case 129:
  return SMU74_MAX_LEVELS_VDDGFX;
 case 130:
  return SMU74_MAX_LEVELS_VDDCI;
 case 132:
  return SMU74_MAX_LEVELS_MVDD;
 case 128:
  return SMU7_UVD_MCLK_HANDSHAKE_DISABLE;
 }

 pr_warn("can't get the mac of %x\n", value);
 return 0;
}
