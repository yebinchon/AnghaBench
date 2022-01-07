
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_object_device {int idr; } ;
struct ttm_base_object {int refcount; } ;


 struct ttm_base_object* idr_find (int *,int ) ;
 int kref_get_unless_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct ttm_base_object *
ttm_base_object_lookup_for_ref(struct ttm_object_device *tdev, uint32_t key)
{
 struct ttm_base_object *base;

 rcu_read_lock();
 base = idr_find(&tdev->idr, key);

 if (base && !kref_get_unless_zero(&base->refcount))
  base = ((void*)0);
 rcu_read_unlock();

 return base;
}
