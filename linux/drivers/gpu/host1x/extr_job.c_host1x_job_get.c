
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_job {int ref; } ;


 int kref_get (int *) ;

struct host1x_job *host1x_job_get(struct host1x_job *job)
{
 kref_get(&job->ref);
 return job;
}
