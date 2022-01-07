
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {unsigned int nr_rnd; } ;



unsigned int dmz_nr_rnd_zones(struct dmz_metadata *zmd)
{
 return zmd->nr_rnd;
}
