
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_cell {int md; struct dm_table* new_map; int name_list; int uuid_list; } ;
struct dm_table {int dummy; } ;


 struct dm_table* dm_get_live_table (int ,int*) ;
 int dm_hash_cells_mutex ;
 int dm_put (int ) ;
 int dm_put_live_table (int ,int) ;
 int dm_set_mdptr (int ,int *) ;
 int dm_table_event (struct dm_table*) ;
 int free_cell (struct hash_cell*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct dm_table *__hash_remove(struct hash_cell *hc)
{
 struct dm_table *table;
 int srcu_idx;


 list_del(&hc->uuid_list);
 list_del(&hc->name_list);
 mutex_lock(&dm_hash_cells_mutex);
 dm_set_mdptr(hc->md, ((void*)0));
 mutex_unlock(&dm_hash_cells_mutex);

 table = dm_get_live_table(hc->md, &srcu_idx);
 if (table)
  dm_table_event(table);
 dm_put_live_table(hc->md, srcu_idx);

 table = ((void*)0);
 if (hc->new_map)
  table = hc->new_map;
 dm_put(hc->md);
 free_cell(hc);

 return table;
}
