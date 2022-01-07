
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_cell {char* uuid; int uuid_list; } ;


 scalar_t__ _uuid_buckets ;
 int dm_hash_cells_mutex ;
 scalar_t__ hash_str (char*) ;
 int list_add (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __set_cell_uuid(struct hash_cell *hc, char *new_uuid)
{
 mutex_lock(&dm_hash_cells_mutex);
 hc->uuid = new_uuid;
 mutex_unlock(&dm_hash_cells_mutex);

 list_add(&hc->uuid_list, _uuid_buckets + hash_str(new_uuid));
}
