
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int mutex; int pqm; int pasid; } ;
struct kfd_ioctl_destroy_queue_args {int queue_id; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pqm_destroy_queue (int *,int ) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int kfd_ioctl_destroy_queue(struct file *filp, struct kfd_process *p,
     void *data)
{
 int retval;
 struct kfd_ioctl_destroy_queue_args *args = data;

 pr_debug("Destroying queue id %d for pasid %d\n",
    args->queue_id,
    p->pasid);

 mutex_lock(&p->mutex);

 retval = pqm_destroy_queue(&p->pqm, args->queue_id);

 mutex_unlock(&p->mutex);
 return retval;
}
