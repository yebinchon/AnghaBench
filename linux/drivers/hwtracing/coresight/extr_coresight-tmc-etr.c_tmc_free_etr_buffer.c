
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int idr_mutex; int idr; } ;
struct etr_perf_buffer {struct etr_buf* etr_buf; int pid; struct tmc_drvdata* drvdata; } ;
struct etr_buf {int refcount; } ;


 scalar_t__ WARN_ON (int) ;
 struct etr_buf* idr_remove (int *,int ) ;
 int kfree (struct etr_perf_buffer*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec_and_test (int *) ;
 int tmc_free_etr_buf (struct etr_buf*) ;

__attribute__((used)) static void tmc_free_etr_buffer(void *config)
{
 struct etr_perf_buffer *etr_perf = config;
 struct tmc_drvdata *drvdata = etr_perf->drvdata;
 struct etr_buf *buf, *etr_buf = etr_perf->etr_buf;

 if (!etr_buf)
  goto free_etr_perf_buffer;

 mutex_lock(&drvdata->idr_mutex);

 if (!refcount_dec_and_test(&etr_buf->refcount)) {
  mutex_unlock(&drvdata->idr_mutex);
  goto free_etr_perf_buffer;
 }


 buf = idr_remove(&drvdata->idr, etr_perf->pid);
 mutex_unlock(&drvdata->idr_mutex);





 if (buf && WARN_ON(buf != etr_buf))
  goto free_etr_perf_buffer;

 tmc_free_etr_buf(etr_perf->etr_buf);

free_etr_perf_buffer:
 kfree(etr_perf);
}
