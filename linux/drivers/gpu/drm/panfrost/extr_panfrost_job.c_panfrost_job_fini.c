
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panfrost_job_slot {TYPE_1__* queue; } ;
struct panfrost_device {struct panfrost_job_slot* js; } ;
struct TYPE_2__ {int sched; } ;


 int JOB_INT_MASK ;
 int NUM_JOB_SLOTS ;
 int drm_sched_fini (int *) ;
 int job_write (struct panfrost_device*,int ,int ) ;

void panfrost_job_fini(struct panfrost_device *pfdev)
{
 struct panfrost_job_slot *js = pfdev->js;
 int j;

 job_write(pfdev, JOB_INT_MASK, 0);

 for (j = 0; j < NUM_JOB_SLOTS; j++)
  drm_sched_fini(&js->queue[j].sched);

}
