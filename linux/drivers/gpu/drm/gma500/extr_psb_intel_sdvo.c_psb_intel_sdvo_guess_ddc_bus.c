
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint16_t ;
struct TYPE_2__ {int const output_flags; } ;
struct psb_intel_sdvo {int ddc_bus; int controlled_output; TYPE_1__ caps; } ;
 unsigned int hweight16 (int const) ;

__attribute__((used)) static void
psb_intel_sdvo_guess_ddc_bus(struct psb_intel_sdvo *sdvo)
{




 sdvo->ddc_bus = 2;
}
