
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_free (int ,void*) ;
 int * queue_cache ;

__attribute__((used)) static void free_queue(void *p, unsigned long q_type)
{
 kmem_cache_free(queue_cache[q_type - 1], p);
}
