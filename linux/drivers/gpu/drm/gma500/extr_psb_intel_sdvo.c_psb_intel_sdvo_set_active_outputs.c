
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct psb_intel_sdvo {int dummy; } ;
typedef int outputs ;


 int SDVO_CMD_SET_ACTIVE_OUTPUTS ;
 int psb_intel_sdvo_set_value (struct psb_intel_sdvo*,int ,int *,int) ;

__attribute__((used)) static bool psb_intel_sdvo_set_active_outputs(struct psb_intel_sdvo *psb_intel_sdvo,
       u16 outputs)
{
 return psb_intel_sdvo_set_value(psb_intel_sdvo,
        SDVO_CMD_SET_ACTIVE_OUTPUTS,
        &outputs, sizeof(outputs));
}
