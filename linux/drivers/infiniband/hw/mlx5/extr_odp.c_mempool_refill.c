
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ curr_nr; scalar_t__ min_nr; } ;
typedef TYPE_1__ mempool_t ;


 int GFP_KERNEL ;
 int mempool_alloc (TYPE_1__*,int ) ;
 int mempool_free (int ,TYPE_1__*) ;

__attribute__((used)) static void mempool_refill(mempool_t *pool)
{
 while (pool->curr_nr < pool->min_nr)
  mempool_free(mempool_alloc(pool, GFP_KERNEL), pool);
}
