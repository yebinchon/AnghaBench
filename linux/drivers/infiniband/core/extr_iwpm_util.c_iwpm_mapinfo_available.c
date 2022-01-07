
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IWPM_MAPINFO_HASH_SIZE ;
 int hlist_empty (int *) ;
 int * iwpm_hash_bucket ;
 int iwpm_mapinfo_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int iwpm_mapinfo_available(void)
{
 unsigned long flags;
 int full_bucket = 0, i = 0;

 spin_lock_irqsave(&iwpm_mapinfo_lock, flags);
 if (iwpm_hash_bucket) {
  for (i = 0; i < IWPM_MAPINFO_HASH_SIZE; i++) {
   if (!hlist_empty(&iwpm_hash_bucket[i])) {
    full_bucket = 1;
    break;
   }
  }
 }
 spin_unlock_irqrestore(&iwpm_mapinfo_lock, flags);
 return full_bucket;
}
