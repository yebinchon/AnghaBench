
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_tt {int * func; } ;
struct ttm_buffer_object {int dummy; } ;
struct ttm_agp_backend {struct ttm_tt ttm; struct agp_bridge_data* bridge; int * mem; } ;
struct agp_bridge_data {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct ttm_agp_backend*) ;
 struct ttm_agp_backend* kmalloc (int,int ) ;
 int ttm_agp_func ;
 scalar_t__ ttm_tt_init (struct ttm_tt*,struct ttm_buffer_object*,int ) ;

struct ttm_tt *ttm_agp_tt_create(struct ttm_buffer_object *bo,
     struct agp_bridge_data *bridge,
     uint32_t page_flags)
{
 struct ttm_agp_backend *agp_be;

 agp_be = kmalloc(sizeof(*agp_be), GFP_KERNEL);
 if (!agp_be)
  return ((void*)0);

 agp_be->mem = ((void*)0);
 agp_be->bridge = bridge;
 agp_be->ttm.func = &ttm_agp_func;

 if (ttm_tt_init(&agp_be->ttm, bo, page_flags)) {
  kfree(agp_be);
  return ((void*)0);
 }

 return &agp_be->ttm;
}
