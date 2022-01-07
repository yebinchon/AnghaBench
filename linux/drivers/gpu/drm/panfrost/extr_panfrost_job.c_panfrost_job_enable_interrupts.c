
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct panfrost_device {int dummy; } ;


 int JOB_INT_CLEAR ;
 int JOB_INT_MASK ;
 int MK_JS_MASK (int) ;
 int NUM_JOB_SLOTS ;
 int job_write (struct panfrost_device*,int ,int ) ;

void panfrost_job_enable_interrupts(struct panfrost_device *pfdev)
{
 int j;
 u32 irq_mask = 0;

 for (j = 0; j < NUM_JOB_SLOTS; j++) {
  irq_mask |= MK_JS_MASK(j);
 }

 job_write(pfdev, JOB_INT_CLEAR, irq_mask);
 job_write(pfdev, JOB_INT_MASK, irq_mask);
}
