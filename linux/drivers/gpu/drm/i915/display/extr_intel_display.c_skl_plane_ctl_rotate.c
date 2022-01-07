
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int MISSING_CASE (unsigned int) ;
 int PLANE_CTL_ROTATE_180 ;
 int PLANE_CTL_ROTATE_270 ;
 int PLANE_CTL_ROTATE_90 ;

__attribute__((used)) static u32 skl_plane_ctl_rotate(unsigned int rotate)
{
 switch (rotate) {
 case 131:
  break;




 case 128:
  return PLANE_CTL_ROTATE_270;
 case 130:
  return PLANE_CTL_ROTATE_180;
 case 129:
  return PLANE_CTL_ROTATE_90;
 default:
  MISSING_CASE(rotate);
 }

 return 0;
}
