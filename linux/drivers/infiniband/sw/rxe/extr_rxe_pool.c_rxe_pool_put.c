
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pool {int ref_cnt; } ;


 int kref_put (int *,int ) ;
 int rxe_pool_release ;

__attribute__((used)) static void rxe_pool_put(struct rxe_pool *pool)
{
 kref_put(&pool->ref_cnt, rxe_pool_release);
}
