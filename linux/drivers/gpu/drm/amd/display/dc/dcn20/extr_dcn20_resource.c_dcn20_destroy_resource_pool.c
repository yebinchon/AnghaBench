
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int dummy; } ;
struct dcn20_resource_pool {int dummy; } ;


 struct dcn20_resource_pool* TO_DCN20_RES_POOL (struct resource_pool*) ;
 int destruct (struct dcn20_resource_pool*) ;
 int kfree (struct dcn20_resource_pool*) ;

__attribute__((used)) static void dcn20_destroy_resource_pool(struct resource_pool **pool)
{
 struct dcn20_resource_pool *dcn20_pool = TO_DCN20_RES_POOL(*pool);

 destruct(dcn20_pool);
 kfree(dcn20_pool);
 *pool = ((void*)0);
}
