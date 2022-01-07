
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dgpu_req_power_for_displays; } ;
struct TYPE_4__ {TYPE_1__ atpx; } ;


 TYPE_2__ radeon_atpx_priv ;

bool radeon_atpx_dgpu_req_power_for_displays(void) {
 return radeon_atpx_priv.atpx.dgpu_req_power_for_displays;
}
