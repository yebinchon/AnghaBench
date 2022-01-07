
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pid; int comm; } ;
struct i915_request {struct i915_gem_context* gem_context; } ;
struct i915_gem_context {int active_count; int guilty_count; int sched; int hw_id; scalar_t__ pid; } ;
struct drm_i915_error_context {void* active; void* guilty; int sched_attr; int hw_id; int pid; int comm; } ;


 int PIDTYPE_PID ;
 void* atomic_read (int *) ;
 int i915_gem_context_no_error_capture (struct i915_gem_context const*) ;
 struct task_struct* pid_task (scalar_t__,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int strcpy (int ,int ) ;

__attribute__((used)) static bool record_context(struct drm_i915_error_context *e,
      const struct i915_request *rq)
{
 const struct i915_gem_context *ctx = rq->gem_context;

 if (ctx->pid) {
  struct task_struct *task;

  rcu_read_lock();
  task = pid_task(ctx->pid, PIDTYPE_PID);
  if (task) {
   strcpy(e->comm, task->comm);
   e->pid = task->pid;
  }
  rcu_read_unlock();
 }

 e->hw_id = ctx->hw_id;
 e->sched_attr = ctx->sched;
 e->guilty = atomic_read(&ctx->guilty_count);
 e->active = atomic_read(&ctx->active_count);

 return i915_gem_context_no_error_capture(ctx);
}
