
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;






bool drm_mode_object_lease_required(uint32_t type)
{
 switch(type) {
 case 129:
 case 130:
 case 128:
  return 1;
 default:
  return 0;
 }
}
