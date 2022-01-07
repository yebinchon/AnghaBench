
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct intel_engine_cs {TYPE_3__* i915; } ;
struct TYPE_6__ {int priority; } ;
struct i915_request {TYPE_1__ sched; } ;
struct i915_gem_context {TYPE_1__ sched; } ;
struct drm_file {TYPE_1__ sched; } ;
struct active_engine {int flags; struct intel_engine_cs* engine; } ;
struct TYPE_7__ {int struct_mutex; } ;
struct TYPE_8__ {TYPE_2__ drm; } ;


 unsigned long ARRAY_SIZE (struct i915_request**) ;
 int I915_RND_STATE (int ) ;
 scalar_t__ IS_ERR (struct i915_request*) ;
 int PTR_ERR (struct i915_request*) ;
 int TEST_PRIORITY ;
 int active_request_put (struct i915_request*) ;
 int cond_resched () ;
 int i915_gem_context_put (struct i915_request*) ;
 int i915_prandom_u32_max_state (int,int *) ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* i915_request_get (struct i915_request*) ;
 struct i915_request* igt_request_alloc (struct i915_request*,struct intel_engine_cs*) ;
 int kthread_should_stop () ;
 struct i915_request* live_context (TYPE_3__*,struct i915_request*) ;
 struct i915_request* mock_file (TYPE_3__*) ;
 int mock_file_free (TYPE_3__*,struct i915_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prng ;

__attribute__((used)) static int active_engine(void *data)
{
 I915_RND_STATE(prng);
 struct active_engine *arg = data;
 struct intel_engine_cs *engine = arg->engine;
 struct i915_request *rq[8] = {};
 struct i915_gem_context *ctx[ARRAY_SIZE(rq)];
 struct drm_file *file;
 unsigned long count = 0;
 int err = 0;

 file = mock_file(engine->i915);
 if (IS_ERR(file))
  return PTR_ERR(file);

 for (count = 0; count < ARRAY_SIZE(ctx); count++) {
  mutex_lock(&engine->i915->drm.struct_mutex);
  ctx[count] = live_context(engine->i915, file);
  mutex_unlock(&engine->i915->drm.struct_mutex);
  if (IS_ERR(ctx[count])) {
   err = PTR_ERR(ctx[count]);
   while (--count)
    i915_gem_context_put(ctx[count]);
   goto err_file;
  }
 }

 while (!kthread_should_stop()) {
  unsigned int idx = count++ & (ARRAY_SIZE(rq) - 1);
  struct i915_request *old = rq[idx];
  struct i915_request *new;

  mutex_lock(&engine->i915->drm.struct_mutex);
  new = igt_request_alloc(ctx[idx], engine);
  if (IS_ERR(new)) {
   mutex_unlock(&engine->i915->drm.struct_mutex);
   err = PTR_ERR(new);
   break;
  }

  if (arg->flags & TEST_PRIORITY)
   ctx[idx]->sched.priority =
    i915_prandom_u32_max_state(512, &prng);

  rq[idx] = i915_request_get(new);
  i915_request_add(new);
  mutex_unlock(&engine->i915->drm.struct_mutex);

  err = active_request_put(old);
  if (err)
   break;

  cond_resched();
 }

 for (count = 0; count < ARRAY_SIZE(rq); count++) {
  int err__ = active_request_put(rq[count]);


  if (!err)
   err = err__;
 }

err_file:
 mock_file_free(engine->i915, file);
 return err;
}
