
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_hybrid; } ;
struct TYPE_4__ {TYPE_1__ atpx; } ;


 TYPE_2__ radeon_atpx_priv ;

bool radeon_is_atpx_hybrid(void) {
 return radeon_atpx_priv.atpx.is_hybrid;
}
