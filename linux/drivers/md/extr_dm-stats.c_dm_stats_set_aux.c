
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_stats {int mutex; } ;
struct dm_stat {char const* aux_data; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct dm_stat* __dm_stats_find (struct dm_stats*,int) ;
 int kfree (char const*) ;
 char* kstrdup (char const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dm_stats_set_aux(struct dm_stats *stats, int id, const char *aux_data)
{
 struct dm_stat *s;
 const char *new_aux_data;

 mutex_lock(&stats->mutex);

 s = __dm_stats_find(stats, id);
 if (!s) {
  mutex_unlock(&stats->mutex);
  return -ENOENT;
 }

 new_aux_data = kstrdup(aux_data, GFP_KERNEL);
 if (!new_aux_data) {
  mutex_unlock(&stats->mutex);
  return -ENOMEM;
 }

 kfree(s->aux_data);
 s->aux_data = new_aux_data;

 mutex_unlock(&stats->mutex);

 return 0;
}
