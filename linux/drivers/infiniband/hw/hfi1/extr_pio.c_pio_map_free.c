
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pio_vl_map {int actual_vls; struct pio_vl_map** map; } ;


 int kfree (struct pio_vl_map*) ;

__attribute__((used)) static void pio_map_free(struct pio_vl_map *m)
{
 int i;

 for (i = 0; m && i < m->actual_vls; i++)
  kfree(m->map[i]);
 kfree(m);
}
