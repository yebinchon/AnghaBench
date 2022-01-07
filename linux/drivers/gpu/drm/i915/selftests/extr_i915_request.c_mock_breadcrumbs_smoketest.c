
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct smoketest {int ncontexts; int max_batch; struct task_struct** contexts; TYPE_2__* engine; int num_fences; int num_waits; int request_alloc; } ;
struct drm_i915_private {TYPE_2__** engine; } ;
struct TYPE_8__ {int timeout_jiffies; } ;
struct TYPE_5__ {int struct_mutex; } ;
struct TYPE_7__ {TYPE_1__ drm; } ;
struct TYPE_6__ {TYPE_3__* i915; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 size_t RCS0 ;
 int __igt_breadcrumbs_smoketest ;
 int __mock_request_alloc ;
 int atomic_long_read (int *) ;
 int get_task_struct (struct task_struct*) ;
 TYPE_4__ i915_selftest ;
 int jiffies_to_msecs (int ) ;
 int kfree (struct task_struct**) ;
 void* kmalloc_array (unsigned int,int,int ) ;
 struct task_struct* kthread_run (int ,struct smoketest*,char*,unsigned int) ;
 int kthread_stop (struct task_struct*) ;
 struct task_struct* mock_context (TYPE_3__*,char*) ;
 int mock_context_close (struct task_struct*) ;
 int msleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int num_online_cpus () ;
 int pr_info (char*,int ,int ,unsigned int) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int mock_breadcrumbs_smoketest(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct smoketest t = {
  .engine = i915->engine[RCS0],
  .ncontexts = 1024,
  .max_batch = 1024,
  .request_alloc = __mock_request_alloc
 };
 unsigned int ncpus = num_online_cpus();
 struct task_struct **threads;
 unsigned int n;
 int ret = 0;







 threads = kmalloc_array(ncpus, sizeof(*threads), GFP_KERNEL);
 if (!threads)
  return -ENOMEM;

 t.contexts =
  kmalloc_array(t.ncontexts, sizeof(*t.contexts), GFP_KERNEL);
 if (!t.contexts) {
  ret = -ENOMEM;
  goto out_threads;
 }

 mutex_lock(&t.engine->i915->drm.struct_mutex);
 for (n = 0; n < t.ncontexts; n++) {
  t.contexts[n] = mock_context(t.engine->i915, "mock");
  if (!t.contexts[n]) {
   ret = -ENOMEM;
   goto out_contexts;
  }
 }
 mutex_unlock(&t.engine->i915->drm.struct_mutex);

 for (n = 0; n < ncpus; n++) {
  threads[n] = kthread_run(__igt_breadcrumbs_smoketest,
      &t, "igt/%d", n);
  if (IS_ERR(threads[n])) {
   ret = PTR_ERR(threads[n]);
   ncpus = n;
   break;
  }

  get_task_struct(threads[n]);
 }

 msleep(jiffies_to_msecs(i915_selftest.timeout_jiffies));

 for (n = 0; n < ncpus; n++) {
  int err;

  err = kthread_stop(threads[n]);
  if (err < 0 && !ret)
   ret = err;

  put_task_struct(threads[n]);
 }
 pr_info("Completed %lu waits for %lu fence across %d cpus\n",
  atomic_long_read(&t.num_waits),
  atomic_long_read(&t.num_fences),
  ncpus);

 mutex_lock(&t.engine->i915->drm.struct_mutex);
out_contexts:
 for (n = 0; n < t.ncontexts; n++) {
  if (!t.contexts[n])
   break;
  mock_context_close(t.contexts[n]);
 }
 mutex_unlock(&t.engine->i915->drm.struct_mutex);
 kfree(t.contexts);
out_threads:
 kfree(threads);

 return ret;
}
