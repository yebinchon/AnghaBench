
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_job {int refcount; } ;


 int kref_put (int *,int ) ;
 int panfrost_job_cleanup ;

void panfrost_job_put(struct panfrost_job *job)
{
 kref_put(&job->refcount, panfrost_job_cleanup);
}
