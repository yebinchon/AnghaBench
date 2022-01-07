
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int dummy; } ;
struct dcn10_resource_pool {int dummy; } ;


 struct dcn10_resource_pool* TO_DCN10_RES_POOL (struct resource_pool*) ;
 int destruct (struct dcn10_resource_pool*) ;
 int kfree (struct dcn10_resource_pool*) ;

__attribute__((used)) static void dcn10_destroy_resource_pool(struct resource_pool **pool)
{
 struct dcn10_resource_pool *dcn10_pool = TO_DCN10_RES_POOL(*pool);

 destruct(dcn10_pool);
 kfree(dcn10_pool);
 *pool = ((void*)0);
}
