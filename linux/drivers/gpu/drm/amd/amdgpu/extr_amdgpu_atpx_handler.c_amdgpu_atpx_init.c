
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atpx; } ;


 TYPE_1__ amdgpu_atpx_priv ;
 int amdgpu_atpx_validate (int *) ;
 int amdgpu_atpx_verify_interface (int *) ;

__attribute__((used)) static int amdgpu_atpx_init(void)
{
 int r;


 r = amdgpu_atpx_verify_interface(&amdgpu_atpx_priv.atpx);
 if (r)
  return r;


 r = amdgpu_atpx_validate(&amdgpu_atpx_priv.atpx);
 if (r)
  return r;

 return 0;
}
