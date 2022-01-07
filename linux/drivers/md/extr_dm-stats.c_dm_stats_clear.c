
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_stats {int mutex; } ;
struct dm_stat {int n_entries; } ;


 int ENOENT ;
 int __dm_stat_clear (struct dm_stat*,int ,int ,int) ;
 struct dm_stat* __dm_stats_find (struct dm_stats*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dm_stats_clear(struct dm_stats *stats, int id)
{
 struct dm_stat *s;

 mutex_lock(&stats->mutex);

 s = __dm_stats_find(stats, id);
 if (!s) {
  mutex_unlock(&stats->mutex);
  return -ENOENT;
 }

 __dm_stat_clear(s, 0, s->n_entries, 1);

 mutex_unlock(&stats->mutex);

 return 1;
}
