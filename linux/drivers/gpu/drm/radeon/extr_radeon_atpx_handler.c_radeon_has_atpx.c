
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atpx_detected; } ;


 TYPE_1__ radeon_atpx_priv ;

bool radeon_has_atpx(void) {
 return radeon_atpx_priv.atpx_detected;
}
