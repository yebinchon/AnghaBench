
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_thin_new_mapping {TYPE_1__* tc; int list; int cell; } ;
struct TYPE_4__ {int mapping_pool; } ;
struct TYPE_3__ {TYPE_2__* pool; } ;


 int cell_error (TYPE_2__*,int ) ;
 int list_del (int *) ;
 int mempool_free (struct dm_thin_new_mapping*,int *) ;

__attribute__((used)) static void process_prepared_mapping_fail(struct dm_thin_new_mapping *m)
{
 cell_error(m->tc->pool, m->cell);
 list_del(&m->list);
 mempool_free(m, &m->tc->pool->mapping_pool);
}
