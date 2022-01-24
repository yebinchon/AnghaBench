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
struct task_struct {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct i915_request {struct i915_gem_context* gem_context; } ;
struct i915_gem_context {int /*<<< orphan*/  active_count; int /*<<< orphan*/  guilty_count; int /*<<< orphan*/  sched; int /*<<< orphan*/  hw_id; scalar_t__ pid; } ;
struct drm_i915_error_context {void* active; void* guilty; int /*<<< orphan*/  sched_attr; int /*<<< orphan*/  hw_id; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i915_gem_context const*) ; 
 struct task_struct* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct drm_i915_error_context *e,
			   const struct i915_request *rq)
{
	const struct i915_gem_context *ctx = rq->gem_context;

	if (ctx->pid) {
		struct task_struct *task;

		FUNC3();
		task = FUNC2(ctx->pid, PIDTYPE_PID);
		if (task) {
			FUNC5(e->comm, task->comm);
			e->pid = task->pid;
		}
		FUNC4();
	}

	e->hw_id = ctx->hw_id;
	e->sched_attr = ctx->sched;
	e->guilty = FUNC0(&ctx->guilty_count);
	e->active = FUNC0(&ctx->active_count);

	return FUNC1(ctx);
}