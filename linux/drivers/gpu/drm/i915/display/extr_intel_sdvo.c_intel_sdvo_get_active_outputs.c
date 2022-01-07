
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_sdvo {int dummy; } ;


 int SDVO_CMD_GET_ACTIVE_OUTPUTS ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,int *,int) ;

__attribute__((used)) static bool intel_sdvo_get_active_outputs(struct intel_sdvo *intel_sdvo,
       u16 *outputs)
{
 return intel_sdvo_get_value(intel_sdvo,
        SDVO_CMD_GET_ACTIVE_OUTPUTS,
        outputs, sizeof(*outputs));
}
