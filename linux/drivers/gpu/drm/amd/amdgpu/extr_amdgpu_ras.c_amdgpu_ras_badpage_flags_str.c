
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *amdgpu_ras_badpage_flags_str(unsigned int flags)
{
 switch (flags) {
 case 0:
  return "R";
 case 1:
  return "P";
 case 2:
 default:
  return "F";
 };
}
