
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_tracker {int work_cache; } ;


 int kfree (struct background_tracker*) ;
 int kmem_cache_destroy (int ) ;

void btracker_destroy(struct background_tracker *b)
{
 kmem_cache_destroy(b->work_cache);
 kfree(b);
}
