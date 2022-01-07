
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip_zone {scalar_t__ zone_end; } ;
struct r0conf {int nr_strip_zones; struct strip_zone* strip_zone; } ;
typedef scalar_t__ sector_t ;


 int BUG () ;

__attribute__((used)) static struct strip_zone *find_zone(struct r0conf *conf,
        sector_t *sectorp)
{
 int i;
 struct strip_zone *z = conf->strip_zone;
 sector_t sector = *sectorp;

 for (i = 0; i < conf->nr_strip_zones; i++)
  if (sector < z[i].zone_end) {
   if (i)
    *sectorp = sector - z[i-1].zone_end;
   return z + i;
  }
 BUG();
}
