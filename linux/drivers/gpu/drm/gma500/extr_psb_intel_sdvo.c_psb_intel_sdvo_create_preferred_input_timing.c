
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct psb_intel_sdvo_preferred_input_timing_args {int scaled; scalar_t__ interlace; scalar_t__ height; scalar_t__ width; scalar_t__ clock; } ;
struct psb_intel_sdvo {TYPE_1__* sdvo_lvds_fixed_mode; scalar_t__ is_lvds; } ;
typedef int args ;
struct TYPE_2__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;


 int SDVO_CMD_CREATE_PREFERRED_INPUT_TIMING ;
 int memset (struct psb_intel_sdvo_preferred_input_timing_args*,int ,int) ;
 int psb_intel_sdvo_set_value (struct psb_intel_sdvo*,int ,struct psb_intel_sdvo_preferred_input_timing_args*,int) ;

__attribute__((used)) static bool
psb_intel_sdvo_create_preferred_input_timing(struct psb_intel_sdvo *psb_intel_sdvo,
      uint16_t clock,
      uint16_t width,
      uint16_t height)
{
 struct psb_intel_sdvo_preferred_input_timing_args args;

 memset(&args, 0, sizeof(args));
 args.clock = clock;
 args.width = width;
 args.height = height;
 args.interlace = 0;

 if (psb_intel_sdvo->is_lvds &&
    (psb_intel_sdvo->sdvo_lvds_fixed_mode->hdisplay != width ||
     psb_intel_sdvo->sdvo_lvds_fixed_mode->vdisplay != height))
  args.scaled = 1;

 return psb_intel_sdvo_set_value(psb_intel_sdvo,
        SDVO_CMD_CREATE_PREFERRED_INPUT_TIMING,
        &args, sizeof(args));
}
