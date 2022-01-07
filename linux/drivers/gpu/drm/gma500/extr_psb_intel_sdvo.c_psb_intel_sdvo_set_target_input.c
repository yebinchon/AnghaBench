
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int targets ;
struct psb_intel_sdvo_set_target_input_args {int member_0; } ;
struct psb_intel_sdvo {int dummy; } ;


 int SDVO_CMD_SET_TARGET_INPUT ;
 int psb_intel_sdvo_set_value (struct psb_intel_sdvo*,int ,struct psb_intel_sdvo_set_target_input_args*,int) ;

__attribute__((used)) static bool psb_intel_sdvo_set_target_input(struct psb_intel_sdvo *psb_intel_sdvo)
{
 struct psb_intel_sdvo_set_target_input_args targets = {0};
 return psb_intel_sdvo_set_value(psb_intel_sdvo,
        SDVO_CMD_SET_TARGET_INPUT,
        &targets, sizeof(targets));
}
