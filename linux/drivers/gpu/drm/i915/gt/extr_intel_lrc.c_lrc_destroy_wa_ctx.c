
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vma; } ;
struct intel_engine_cs {TYPE_1__ wa_ctx; } ;


 int i915_vma_unpin_and_release (int *,int ) ;

__attribute__((used)) static void lrc_destroy_wa_ctx(struct intel_engine_cs *engine)
{
 i915_vma_unpin_and_release(&engine->wa_ctx.vma, 0);
}
