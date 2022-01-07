
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct host1x_job {TYPE_2__* channel; } ;
struct host1x {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int parent; } ;


 struct host1x* dev_get_drvdata (int ) ;
 int host1x_hw_channel_submit (struct host1x*,struct host1x_job*) ;

int host1x_job_submit(struct host1x_job *job)
{
 struct host1x *host = dev_get_drvdata(job->channel->dev->parent);

 return host1x_hw_channel_submit(host, job);
}
