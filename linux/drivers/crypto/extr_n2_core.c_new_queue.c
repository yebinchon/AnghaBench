
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kmem_cache_zalloc (int ,int ) ;
 int * queue_cache ;

__attribute__((used)) static void *new_queue(unsigned long q_type)
{
 return kmem_cache_zalloc(queue_cache[q_type - 1], GFP_KERNEL);
}
