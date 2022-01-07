
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int SVGA3D_DEVCAP_MULTISAMPLE_MASKABLESAMPLES ;

__attribute__((used)) static u32 vmw_mask_multisample(unsigned int cap, u32 fmt_value)
{





 if (cap == SVGA3D_DEVCAP_MULTISAMPLE_MASKABLESAMPLES)
  return 0;

 return fmt_value;
}
