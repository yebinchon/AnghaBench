
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd2kgd_calls {int dummy; } ;


 int kfd2kgd ;

struct kfd2kgd_calls *amdgpu_amdkfd_gfx_7_get_functions(void)
{
 return (struct kfd2kgd_calls *)&kfd2kgd;
}
