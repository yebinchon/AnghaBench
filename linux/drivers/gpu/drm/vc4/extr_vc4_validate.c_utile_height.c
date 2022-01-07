
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DRM_ERROR (char*,int) ;

__attribute__((used)) static uint32_t
utile_height(int cpp)
{
 switch (cpp) {
 case 1:
  return 8;
 case 2:
 case 4:
 case 8:
  return 4;
 default:
  DRM_ERROR("unknown cpp: %d\n", cpp);
  return 1;
 }
}
