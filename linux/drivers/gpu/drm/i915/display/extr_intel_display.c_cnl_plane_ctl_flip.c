
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




 int MISSING_CASE (unsigned int) ;
 int PLANE_CTL_FLIP_HORIZONTAL ;

__attribute__((used)) static u32 cnl_plane_ctl_flip(unsigned int reflect)
{
 switch (reflect) {
 case 0:
  break;
 case 129:
  return PLANE_CTL_FLIP_HORIZONTAL;
 case 128:
 default:
  MISSING_CASE(reflect);
 }

 return 0;
}
