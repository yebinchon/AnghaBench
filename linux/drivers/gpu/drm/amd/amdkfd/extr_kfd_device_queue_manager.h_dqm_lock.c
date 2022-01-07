
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_queue_manager {int saved_flags; int lock_hidden; } ;


 int memalloc_nofs_save () ;
 int mutex_lock (int *) ;

__attribute__((used)) static inline void dqm_lock(struct device_queue_manager *dqm)
{
 mutex_lock(&dqm->lock_hidden);
 dqm->saved_flags = memalloc_nofs_save();
}
