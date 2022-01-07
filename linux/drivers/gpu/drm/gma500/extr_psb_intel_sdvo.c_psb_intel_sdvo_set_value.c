
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psb_intel_sdvo {int dummy; } ;


 int psb_intel_sdvo_read_response (struct psb_intel_sdvo*,int *,int ) ;
 int psb_intel_sdvo_write_cmd (struct psb_intel_sdvo*,int ,void const*,int) ;

__attribute__((used)) static bool psb_intel_sdvo_set_value(struct psb_intel_sdvo *psb_intel_sdvo, u8 cmd, const void *data, int len)
{
 if (!psb_intel_sdvo_write_cmd(psb_intel_sdvo, cmd, data, len))
  return 0;

 return psb_intel_sdvo_read_response(psb_intel_sdvo, ((void*)0), 0);
}
