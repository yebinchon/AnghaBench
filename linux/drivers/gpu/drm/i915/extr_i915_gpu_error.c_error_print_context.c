
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_error_state_buf {int dummy; } ;
struct TYPE_2__ {int priority; } ;
struct drm_i915_error_context {int active; int guilty; TYPE_1__ sched_attr; int hw_id; int pid; int comm; } ;


 int err_printf (struct drm_i915_error_state_buf*,char*,char const*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void error_print_context(struct drm_i915_error_state_buf *m,
    const char *header,
    const struct drm_i915_error_context *ctx)
{
 err_printf(m, "%s%s[%d] hw_id %d, prio %d, guilty %d active %d\n",
     header, ctx->comm, ctx->pid, ctx->hw_id,
     ctx->sched_attr.priority, ctx->guilty, ctx->active);
}
