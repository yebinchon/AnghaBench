
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int suspend_lock; } ;


 int dm_queue_flush (struct mapped_device*) ;
 scalar_t__ dm_suspended_internally_md (struct mapped_device*) ;
 scalar_t__ dm_suspended_md (struct mapped_device*) ;
 int mutex_unlock (int *) ;

void dm_internal_resume_fast(struct mapped_device *md)
{
 if (dm_suspended_md(md) || dm_suspended_internally_md(md))
  goto done;

 dm_queue_flush(md);

done:
 mutex_unlock(&md->suspend_lock);
}
