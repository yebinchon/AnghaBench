
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stratix10_svc_sh_memory {scalar_t__ size; scalar_t__ addr; int sync_complete; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int cpu_to_node (unsigned int) ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int) ;
 int dev_err (struct device*,char*) ;
 int init_completion (int *) ;
 struct task_struct* kthread_create_on_node (int ,void*,int ,char*) ;
 int svc_normal_to_secure_shm_thread ;
 int wait_for_completion_timeout (int *,int) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static int svc_get_sh_memory(struct platform_device *pdev,
        struct stratix10_svc_sh_memory *sh_memory)
{
 struct device *dev = &pdev->dev;
 struct task_struct *sh_memory_task;
 unsigned int cpu = 0;

 init_completion(&sh_memory->sync_complete);


 sh_memory_task = kthread_create_on_node(svc_normal_to_secure_shm_thread,
            (void *)sh_memory,
      cpu_to_node(cpu),
      "svc_smc_hvc_shm_thread");
 if (IS_ERR(sh_memory_task)) {
  dev_err(dev, "fail to create stratix10_svc_smc_shm_thread\n");
  return -EINVAL;
 }

 wake_up_process(sh_memory_task);

 if (!wait_for_completion_timeout(&sh_memory->sync_complete, 10 * HZ)) {
  dev_err(dev,
   "timeout to get sh-memory paras from secure world\n");
  return -ETIMEDOUT;
 }

 if (!sh_memory->addr || !sh_memory->size) {
  dev_err(dev,
   "failed to get shared memory info from secure world\n");
  return -ENOMEM;
 }

 dev_dbg(dev, "SM software provides paddr: 0x%016x, size: 0x%08x\n",
  (unsigned int)sh_memory->addr,
  (unsigned int)sh_memory->size);

 return 0;
}
