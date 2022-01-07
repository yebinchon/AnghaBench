
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int dummy; } ;


 int DRM_INFO (char*) ;
 int EINVAL ;

__attribute__((used)) static int psp_v10_0_mode1_reset(struct psp_context *psp)
{
 DRM_INFO("psp mode 1 reset not supported now! \n");
 return -EINVAL;
}
