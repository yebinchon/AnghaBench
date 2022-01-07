
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int power_cntl; } ;
struct TYPE_4__ {TYPE_2__ functions; } ;
struct TYPE_6__ {TYPE_1__ atpx; } ;


 TYPE_3__ radeon_atpx_priv ;

bool radeon_has_atpx_dgpu_power_cntl(void) {
 return radeon_atpx_priv.atpx.functions.power_cntl;
}
