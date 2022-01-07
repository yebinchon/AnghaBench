
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int idr_mutex; int idr; } ;
struct perf_event {int owner; } ;
struct etr_buf {int refcount; } ;
typedef scalar_t__ pid_t ;


 int ENOMEM ;
 int ENOSPC ;
 struct etr_buf* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct etr_buf*) ;
 struct etr_buf* alloc_etr_buf (struct tmc_drvdata*,struct perf_event*,int,void**,int) ;
 int idr_alloc (int *,struct etr_buf*,scalar_t__,scalar_t__,int ) ;
 struct etr_buf* idr_find (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_inc (int *) ;
 scalar_t__ task_pid_nr (int ) ;
 int tmc_free_etr_buf (struct etr_buf*) ;

__attribute__((used)) static struct etr_buf *
get_perf_etr_buf_cpu_wide(struct tmc_drvdata *drvdata,
     struct perf_event *event, int nr_pages,
     void **pages, bool snapshot)
{
 int ret;
 pid_t pid = task_pid_nr(event->owner);
 struct etr_buf *etr_buf;

retry:
 mutex_lock(&drvdata->idr_mutex);
 etr_buf = idr_find(&drvdata->idr, pid);
 if (etr_buf) {
  refcount_inc(&etr_buf->refcount);
  mutex_unlock(&drvdata->idr_mutex);
  return etr_buf;
 }


 mutex_unlock(&drvdata->idr_mutex);

 etr_buf = alloc_etr_buf(drvdata, event, nr_pages, pages, snapshot);
 if (IS_ERR(etr_buf))
  return etr_buf;


 mutex_lock(&drvdata->idr_mutex);
 ret = idr_alloc(&drvdata->idr, etr_buf, pid, pid + 1, GFP_KERNEL);
 mutex_unlock(&drvdata->idr_mutex);


 if (ret == -ENOSPC) {
  tmc_free_etr_buf(etr_buf);
  goto retry;
 }


 if (ret == -ENOMEM) {
  tmc_free_etr_buf(etr_buf);
  return ERR_PTR(ret);
 }


 return etr_buf;
}
