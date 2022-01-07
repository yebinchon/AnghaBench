
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_ipc {void* in; void* out; int work; scalar_t__ value; int started; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_WORK_ONSTACK (int *,int ) ;
 scalar_t__ READ_ONCE (scalar_t__) ;
 void* alloc_fence () ;
 int destroy_work_on_stack (int *) ;
 int flush_work (int *) ;
 int free_fence (void*) ;
 int i915_sw_fence_commit (void*) ;
 int i915_sw_fence_wait (void*) ;
 int init_completion (int *) ;
 int pr_err (char*) ;
 int schedule_work (int *) ;
 int task_ipc ;
 int usleep_range (int,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int test_ipc(void *arg)
{
 struct task_ipc ipc;
 int ret = 0;


 ipc.in = alloc_fence();
 if (!ipc.in)
  return -ENOMEM;
 ipc.out = alloc_fence();
 if (!ipc.out) {
  ret = -ENOMEM;
  goto err_in;
 }


 init_completion(&ipc.started);

 ipc.value = 0;
 INIT_WORK_ONSTACK(&ipc.work, task_ipc);
 schedule_work(&ipc.work);

 wait_for_completion(&ipc.started);

 usleep_range(1000, 2000);
 if (READ_ONCE(ipc.value)) {
  pr_err("worker updated value before i915_sw_fence was signaled\n");
  ret = -EINVAL;
 }

 i915_sw_fence_commit(ipc.in);
 i915_sw_fence_wait(ipc.out);

 if (!READ_ONCE(ipc.value)) {
  pr_err("worker signaled i915_sw_fence before value was posted\n");
  ret = -EINVAL;
 }

 flush_work(&ipc.work);
 destroy_work_on_stack(&ipc.work);
 free_fence(ipc.out);
err_in:
 free_fence(ipc.in);
 return ret;
}
