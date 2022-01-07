
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct resource_pool {int dummy; } ;
struct dce110_resource_pool {struct resource_pool base; } ;
struct dc {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 scalar_t__ construct (int ,struct dc*,struct dce110_resource_pool*) ;
 int kfree (struct dce110_resource_pool*) ;
 struct dce110_resource_pool* kzalloc (int,int ) ;

struct resource_pool *dce100_create_resource_pool(
 uint8_t num_virtual_links,
 struct dc *dc)
{
 struct dce110_resource_pool *pool =
  kzalloc(sizeof(struct dce110_resource_pool), GFP_KERNEL);

 if (!pool)
  return ((void*)0);

 if (construct(num_virtual_links, dc, pool))
  return &pool->base;

 kfree(pool);
 BREAK_TO_DEBUGGER();
 return ((void*)0);
}
