
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_job {int num_unpins; int num_slots; int timeout; int first_get; int syncpt_end; int syncpt_id; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int ) ;

void host1x_job_dump(struct device *dev, struct host1x_job *job)
{
 dev_dbg(dev, "    SYNCPT_ID   %d\n", job->syncpt_id);
 dev_dbg(dev, "    SYNCPT_VAL  %d\n", job->syncpt_end);
 dev_dbg(dev, "    FIRST_GET   0x%x\n", job->first_get);
 dev_dbg(dev, "    TIMEOUT     %d\n", job->timeout);
 dev_dbg(dev, "    NUM_SLOTS   %d\n", job->num_slots);
 dev_dbg(dev, "    NUM_HANDLES %d\n", job->num_unpins);
}
