
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int suspend_lock; } ;


 int __dm_internal_resume (struct mapped_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dm_internal_resume(struct mapped_device *md)
{
 mutex_lock(&md->suspend_lock);
 __dm_internal_resume(md);
 mutex_unlock(&md->suspend_lock);
}
