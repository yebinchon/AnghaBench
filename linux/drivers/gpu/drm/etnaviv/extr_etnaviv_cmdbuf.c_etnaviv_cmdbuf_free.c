
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_cmdbuf_suballoc {int free_space; int free_event; int lock; int granule_map; } ;
struct etnaviv_cmdbuf {int suballoc_offset; int size; struct etnaviv_cmdbuf_suballoc* suballoc; } ;


 int ALIGN (int ,int) ;
 int SUBALLOC_GRANULE ;
 int bitmap_release_region (int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int order_base_2 (int) ;
 int wake_up_all (int *) ;

void etnaviv_cmdbuf_free(struct etnaviv_cmdbuf *cmdbuf)
{
 struct etnaviv_cmdbuf_suballoc *suballoc = cmdbuf->suballoc;
 int order = order_base_2(ALIGN(cmdbuf->size, SUBALLOC_GRANULE) /
     SUBALLOC_GRANULE);

 mutex_lock(&suballoc->lock);
 bitmap_release_region(suballoc->granule_map,
         cmdbuf->suballoc_offset / SUBALLOC_GRANULE,
         order);
 suballoc->free_space = 1;
 mutex_unlock(&suballoc->lock);
 wake_up_all(&suballoc->free_event);
}
