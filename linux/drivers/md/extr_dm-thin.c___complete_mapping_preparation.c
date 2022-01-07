
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int prepared_mappings; } ;
struct dm_thin_new_mapping {int list; int prepare_actions; TYPE_1__* tc; } ;
struct TYPE_2__ {struct pool* pool; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int list_add_tail (int *,int *) ;
 int wake_worker (struct pool*) ;

__attribute__((used)) static void __complete_mapping_preparation(struct dm_thin_new_mapping *m)
{
 struct pool *pool = m->tc->pool;

 if (atomic_dec_and_test(&m->prepare_actions)) {
  list_add_tail(&m->list, &pool->prepared_mappings);
  wake_worker(pool);
 }
}
