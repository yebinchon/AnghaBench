
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_job_gather {unsigned int words; unsigned int offset; struct host1x_bo* bo; } ;
struct host1x_job {size_t num_gathers; struct host1x_job_gather* gathers; } ;
struct host1x_bo {int dummy; } ;



void host1x_job_add_gather(struct host1x_job *job, struct host1x_bo *bo,
      unsigned int words, unsigned int offset)
{
 struct host1x_job_gather *gather = &job->gathers[job->num_gathers];

 gather->words = words;
 gather->bo = bo;
 gather->offset = offset;

 job->num_gathers++;
}
