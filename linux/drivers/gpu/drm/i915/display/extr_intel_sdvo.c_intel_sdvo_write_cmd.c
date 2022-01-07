
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_sdvo {int dummy; } ;


 int __intel_sdvo_write_cmd (struct intel_sdvo*,int ,void const*,int,int) ;

__attribute__((used)) static bool intel_sdvo_write_cmd(struct intel_sdvo *intel_sdvo, u8 cmd,
     const void *args, int args_len)
{
 return __intel_sdvo_write_cmd(intel_sdvo, cmd, args, args_len, 1);
}
