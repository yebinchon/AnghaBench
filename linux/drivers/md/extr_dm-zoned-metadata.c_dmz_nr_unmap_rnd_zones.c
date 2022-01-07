
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int unmap_nr_rnd; } ;


 unsigned int atomic_read (int *) ;

unsigned int dmz_nr_unmap_rnd_zones(struct dmz_metadata *zmd)
{
 return atomic_read(&zmd->unmap_nr_rnd);
}
