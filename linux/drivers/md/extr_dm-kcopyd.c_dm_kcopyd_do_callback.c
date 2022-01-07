
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcopyd_job {int read_err; unsigned long write_err; struct dm_kcopyd_client* kc; } ;
struct dm_kcopyd_client {int callback_jobs; } ;


 int push (int *,struct kcopyd_job*) ;
 int wake (struct dm_kcopyd_client*) ;

void dm_kcopyd_do_callback(void *j, int read_err, unsigned long write_err)
{
 struct kcopyd_job *job = j;
 struct dm_kcopyd_client *kc = job->kc;

 job->read_err = read_err;
 job->write_err = write_err;

 push(&kc->callback_jobs, job);
 wake(kc);
}
