
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_execlist_slot {struct execlist_ctx_descriptor_format* ctx; } ;
struct intel_vgpu_execlist {struct execlist_ctx_descriptor_format* running_context; struct intel_vgpu_execlist_slot* pending_slot; struct intel_vgpu_execlist_slot* running_slot; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int dummy; } ;
struct execlist_ctx_descriptor_format {scalar_t__ context_id; } ;
struct execlist_context_status_format {int context_complete; int element_switch; int active_to_idle; int idle_to_active; scalar_t__ context_id; } ;
typedef int status ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int emulate_csb_update (struct intel_vgpu_execlist*,struct execlist_context_status_format*,int) ;
 int emulate_execlist_status (struct intel_vgpu_execlist*) ;
 int gvt_dbg_el (char*,...) ;
 int gvt_vgpu_err (char*,scalar_t__,scalar_t__) ;
 int memset (struct execlist_context_status_format*,int ,int) ;
 scalar_t__ same_context (struct execlist_ctx_descriptor_format*,struct execlist_ctx_descriptor_format*) ;
 int switch_virtual_execlist_slot (struct intel_vgpu_execlist*) ;
 scalar_t__ valid_context (struct execlist_ctx_descriptor_format*) ;

__attribute__((used)) static int emulate_execlist_ctx_schedule_out(
  struct intel_vgpu_execlist *execlist,
  struct execlist_ctx_descriptor_format *ctx)
{
 struct intel_vgpu *vgpu = execlist->vgpu;
 struct intel_vgpu_execlist_slot *running = execlist->running_slot;
 struct intel_vgpu_execlist_slot *pending = execlist->pending_slot;
 struct execlist_ctx_descriptor_format *ctx0 = &running->ctx[0];
 struct execlist_ctx_descriptor_format *ctx1 = &running->ctx[1];
 struct execlist_context_status_format status;

 memset(&status, 0, sizeof(status));

 gvt_dbg_el("schedule out context id %x\n", ctx->context_id);

 if (WARN_ON(!same_context(ctx, execlist->running_context))) {
  gvt_vgpu_err("schedule out context is not running context,"
    "ctx id %x running ctx id %x\n",
    ctx->context_id,
    execlist->running_context->context_id);
  return -EINVAL;
 }


 if (valid_context(ctx1) && same_context(ctx0, ctx)) {
  gvt_dbg_el("ctx 1 valid, ctx/ctx 0 is scheduled-out\n");

  execlist->running_context = ctx1;

  emulate_execlist_status(execlist);

  status.context_complete = status.element_switch = 1;
  status.context_id = ctx->context_id;

  emulate_csb_update(execlist, &status, 0);
 } else if ((!valid_context(ctx1) && same_context(ctx0, ctx))
   || (valid_context(ctx1) && same_context(ctx1, ctx))) {
  gvt_dbg_el("need to switch virtual execlist slot\n");

  switch_virtual_execlist_slot(execlist);

  emulate_execlist_status(execlist);

  status.context_complete = status.active_to_idle = 1;
  status.context_id = ctx->context_id;

  if (!pending) {
   emulate_csb_update(execlist, &status, 0);
  } else {
   emulate_csb_update(execlist, &status, 1);

   memset(&status, 0, sizeof(status));

   status.idle_to_active = 1;
   status.context_id = 0;

   emulate_csb_update(execlist, &status, 0);
  }
 } else {
  WARN_ON(1);
  return -EINVAL;
 }

 return 0;
}
