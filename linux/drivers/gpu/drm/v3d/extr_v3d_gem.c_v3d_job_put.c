
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_job {int free; int refcount; } ;


 int kref_put (int *,int ) ;

void v3d_job_put(struct v3d_job *job)
{
 kref_put(&job->refcount, job->free);
}
