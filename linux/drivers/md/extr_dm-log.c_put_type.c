
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_dirty_log_type {int module; int name; } ;


 int __find_dirty_log_type (int ) ;
 int _lock ;
 int module_put (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_type(struct dm_dirty_log_type *type)
{
 if (!type)
  return;

 spin_lock(&_lock);
 if (!__find_dirty_log_type(type->name))
  goto out;

 module_put(type->module);

out:
 spin_unlock(&_lock);
}
