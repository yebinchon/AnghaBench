
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int dummy; } ;
struct kfd_ioctl_reset_event_args {int event_id; } ;
struct file {int dummy; } ;


 int kfd_reset_event (struct kfd_process*,int ) ;

__attribute__((used)) static int kfd_ioctl_reset_event(struct file *filp, struct kfd_process *p,
    void *data)
{
 struct kfd_ioctl_reset_event_args *args = data;

 return kfd_reset_event(p, args->event_id);
}
