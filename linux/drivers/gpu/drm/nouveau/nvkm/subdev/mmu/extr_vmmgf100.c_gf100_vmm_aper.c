
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nvkm_memory_target { ____Placeholder_nvkm_memory_target } nvkm_memory_target ;


 int EINVAL ;




int
gf100_vmm_aper(enum nvkm_memory_target target)
{
 switch (target) {
 case 128: return 0;
 case 130: return 2;
 case 129: return 3;
 default:
  return -EINVAL;
 }
}
