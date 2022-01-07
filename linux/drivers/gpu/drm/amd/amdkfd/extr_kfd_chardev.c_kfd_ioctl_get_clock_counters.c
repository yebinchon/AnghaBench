
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int dummy; } ;
struct kfd_ioctl_get_clock_counters_args {int system_clock_freq; int system_clock_counter; int cpu_clock_counter; scalar_t__ gpu_clock_counter; int gpu_id; } ;
struct kfd_dev {int kgd; } ;
struct file {int dummy; } ;


 scalar_t__ amdgpu_amdkfd_get_gpu_clock_counter (int ) ;
 struct kfd_dev* kfd_device_by_id (int ) ;
 int ktime_get_boottime_ns () ;
 int ktime_get_raw_ns () ;

__attribute__((used)) static int kfd_ioctl_get_clock_counters(struct file *filep,
    struct kfd_process *p, void *data)
{
 struct kfd_ioctl_get_clock_counters_args *args = data;
 struct kfd_dev *dev;

 dev = kfd_device_by_id(args->gpu_id);
 if (dev)

  args->gpu_clock_counter = amdgpu_amdkfd_get_gpu_clock_counter(dev->kgd);
 else

  args->gpu_clock_counter = 0;


 args->cpu_clock_counter = ktime_get_raw_ns();
 args->system_clock_counter = ktime_get_boottime_ns();


 args->system_clock_freq = 1000000000;

 return 0;
}
