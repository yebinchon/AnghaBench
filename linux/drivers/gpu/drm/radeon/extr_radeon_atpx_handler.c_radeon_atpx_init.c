
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atpx; } ;


 TYPE_1__ radeon_atpx_priv ;
 int radeon_atpx_validate (int *) ;
 int radeon_atpx_verify_interface (int *) ;

__attribute__((used)) static int radeon_atpx_init(void)
{
 int r;


 r = radeon_atpx_verify_interface(&radeon_atpx_priv.atpx);
 if (r)
  return r;


 r = radeon_atpx_validate(&radeon_atpx_priv.atpx);
 if (r)
  return r;

 return 0;
}
