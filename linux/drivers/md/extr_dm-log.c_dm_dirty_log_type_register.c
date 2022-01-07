
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_dirty_log_type {int list; int name; } ;


 int EEXIST ;
 int __find_dirty_log_type (int ) ;
 int _lock ;
 int _log_types ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dm_dirty_log_type_register(struct dm_dirty_log_type *type)
{
 int r = 0;

 spin_lock(&_lock);
 if (!__find_dirty_log_type(type->name))
  list_add(&type->list, &_log_types);
 else
  r = -EEXIST;
 spin_unlock(&_lock);

 return r;
}
