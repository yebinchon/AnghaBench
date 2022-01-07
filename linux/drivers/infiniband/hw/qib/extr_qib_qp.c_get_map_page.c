
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qpn_table {int lock; } ;
struct rvt_qpn_map {void* page; } ;


 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void get_map_page(struct rvt_qpn_table *qpt, struct rvt_qpn_map *map)
{
 unsigned long page = get_zeroed_page(GFP_KERNEL);





 spin_lock(&qpt->lock);
 if (map->page)
  free_page(page);
 else
  map->page = (void *)page;
 spin_unlock(&qpt->lock);
}
