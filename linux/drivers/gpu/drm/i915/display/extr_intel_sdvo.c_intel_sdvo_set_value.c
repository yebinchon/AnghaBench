
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_sdvo {int dummy; } ;


 int intel_sdvo_read_response (struct intel_sdvo*,int *,int ) ;
 int intel_sdvo_write_cmd (struct intel_sdvo*,int ,void const*,int) ;

__attribute__((used)) static bool intel_sdvo_set_value(struct intel_sdvo *intel_sdvo, u8 cmd, const void *data, int len)
{
 if (!intel_sdvo_write_cmd(intel_sdvo, cmd, data, len))
  return 0;

 return intel_sdvo_read_response(intel_sdvo, ((void*)0), 0);
}
