
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_cell {char* name; int name_list; } ;


 scalar_t__ _name_buckets ;
 int dm_hash_cells_mutex ;
 scalar_t__ hash_str (char*) ;
 int list_add (int *,scalar_t__) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static char *__change_cell_name(struct hash_cell *hc, char *new_name)
{
 char *old_name;




 list_del(&hc->name_list);
 old_name = hc->name;

 mutex_lock(&dm_hash_cells_mutex);
 hc->name = new_name;
 mutex_unlock(&dm_hash_cells_mutex);

 list_add(&hc->name_list, _name_buckets + hash_str(new_name));

 return old_name;
}
