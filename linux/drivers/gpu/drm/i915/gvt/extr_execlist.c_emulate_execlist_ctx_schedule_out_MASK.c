#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_vgpu_execlist_slot {struct execlist_ctx_descriptor_format* ctx; } ;
struct intel_vgpu_execlist {struct execlist_ctx_descriptor_format* running_context; struct intel_vgpu_execlist_slot* pending_slot; struct intel_vgpu_execlist_slot* running_slot; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int dummy; } ;
struct execlist_ctx_descriptor_format {scalar_t__ context_id; } ;
struct execlist_context_status_format {int context_complete; int element_switch; int active_to_idle; int idle_to_active; scalar_t__ context_id; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu_execlist*,struct execlist_context_status_format*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu_execlist*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct execlist_context_status_format*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct execlist_ctx_descriptor_format*,struct execlist_ctx_descriptor_format*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_vgpu_execlist*) ; 
 scalar_t__ FUNC8 (struct execlist_ctx_descriptor_format*) ; 

__attribute__((used)) static int FUNC9(
		struct intel_vgpu_execlist *execlist,
		struct execlist_ctx_descriptor_format *ctx)
{
	struct intel_vgpu *vgpu = execlist->vgpu;
	struct intel_vgpu_execlist_slot *running = execlist->running_slot;
	struct intel_vgpu_execlist_slot *pending = execlist->pending_slot;
	struct execlist_ctx_descriptor_format *ctx0 = &running->ctx[0];
	struct execlist_ctx_descriptor_format *ctx1 = &running->ctx[1];
	struct execlist_context_status_format status;

	FUNC5(&status, 0, sizeof(status));

	FUNC3("schedule out context id %x\n", ctx->context_id);

	if (FUNC0(!FUNC6(ctx, execlist->running_context))) {
		FUNC4("schedule out context is not running context,"
				"ctx id %x running ctx id %x\n",
				ctx->context_id,
				execlist->running_context->context_id);
		return -EINVAL;
	}

	/* ctx1 is valid, ctx0/ctx is scheduled-out -> element switch */
	if (FUNC8(ctx1) && FUNC6(ctx0, ctx)) {
		FUNC3("ctx 1 valid, ctx/ctx 0 is scheduled-out\n");

		execlist->running_context = ctx1;

		FUNC2(execlist);

		status.context_complete = status.element_switch = 1;
		status.context_id = ctx->context_id;

		FUNC1(execlist, &status, false);
		/*
		 * ctx1 is not valid, ctx == ctx0
		 * ctx1 is valid, ctx1 == ctx
		 *	--> last element is finished
		 * emulate:
		 *	active-to-idle if there is *no* pending execlist
		 *	context-complete if there *is* pending execlist
		 */
	} else if ((!FUNC8(ctx1) && FUNC6(ctx0, ctx))
			|| (FUNC8(ctx1) && FUNC6(ctx1, ctx))) {
		FUNC3("need to switch virtual execlist slot\n");

		FUNC7(execlist);

		FUNC2(execlist);

		status.context_complete = status.active_to_idle = 1;
		status.context_id = ctx->context_id;

		if (!pending) {
			FUNC1(execlist, &status, false);
		} else {
			FUNC1(execlist, &status, true);

			FUNC5(&status, 0, sizeof(status));

			status.idle_to_active = 1;
			status.context_id = 0;

			FUNC1(execlist, &status, false);
		}
	} else {
		FUNC0(1);
		return -EINVAL;
	}

	return 0;
}