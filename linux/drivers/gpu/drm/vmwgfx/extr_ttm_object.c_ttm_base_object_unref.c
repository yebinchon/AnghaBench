
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_base_object {int refcount; } ;


 int kref_put (int *,int ) ;
 int ttm_release_base ;

void ttm_base_object_unref(struct ttm_base_object **p_base)
{
 struct ttm_base_object *base = *p_base;

 *p_base = ((void*)0);

 kref_put(&base->refcount, ttm_release_base);
}
