
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_plane {int desc; } ;


 int GAM_CTL_BACK_MASK ;
 int GAM_CTL_CURSOR_MASK ;
 int GAM_CTL_GDP0_MASK ;
 int GAM_CTL_GDP1_MASK ;
 int GAM_CTL_GDP2_MASK ;
 int GAM_CTL_GDP3_MASK ;
 int GAM_CTL_VID0_MASK ;
__attribute__((used)) static u32 sti_mixer_get_plane_mask(struct sti_plane *plane)
{
 switch (plane->desc) {
 case 134:
  return GAM_CTL_BACK_MASK;
 case 132:
  return GAM_CTL_GDP0_MASK;
 case 131:
  return GAM_CTL_GDP1_MASK;
 case 130:
  return GAM_CTL_GDP2_MASK;
 case 129:
  return GAM_CTL_GDP3_MASK;
 case 128:
  return GAM_CTL_VID0_MASK;
 case 133:
  return GAM_CTL_CURSOR_MASK;
 default:
  return 0;
 }
}
