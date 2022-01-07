
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_job {int ref; } ;


 int job_free ;
 int kref_put (int *,int ) ;

void host1x_job_put(struct host1x_job *job)
{
 kref_put(&job->ref, job_free);
}
