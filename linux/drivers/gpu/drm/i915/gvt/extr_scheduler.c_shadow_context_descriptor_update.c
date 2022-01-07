
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int addressing_mode; } ;
struct intel_vgpu_workload {TYPE_1__ ctx_desc; } ;
struct intel_context {int lrc_desc; } ;


 int GEN8_CTX_ADDRESSING_MODE_SHIFT ;

__attribute__((used)) static void
shadow_context_descriptor_update(struct intel_context *ce,
     struct intel_vgpu_workload *workload)
{
 u64 desc = ce->lrc_desc;





 desc &= ~(0x3 << GEN8_CTX_ADDRESSING_MODE_SHIFT);
 desc |= workload->ctx_desc.addressing_mode <<
  GEN8_CTX_ADDRESSING_MODE_SHIFT;

 ce->lrc_desc = desc;
}
