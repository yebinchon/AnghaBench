
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager {int lock_hidden; int saved_flags; } ;


 int memalloc_nofs_restore (int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void dqm_unlock(struct device_queue_manager *dqm)
{
 memalloc_nofs_restore(dqm->saved_flags);
 mutex_unlock(&dqm->lock_hidden);
}
