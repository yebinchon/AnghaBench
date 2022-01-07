
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int dummy; } ;
struct dcn21_resource_pool {int dummy; } ;


 struct dcn21_resource_pool* TO_DCN21_RES_POOL (struct resource_pool*) ;
 int destruct (struct dcn21_resource_pool*) ;
 int kfree (struct dcn21_resource_pool*) ;

__attribute__((used)) static void dcn21_destroy_resource_pool(struct resource_pool **pool)
{
 struct dcn21_resource_pool *dcn21_pool = TO_DCN21_RES_POOL(*pool);

 destruct(dcn21_pool);
 kfree(dcn21_pool);
 *pool = ((void*)0);
}
