
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_dirty_log_type {int module; } ;


 struct dm_dirty_log_type* __find_dirty_log_type (char const*) ;
 int _lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct dm_dirty_log_type *_get_dirty_log_type(const char *name)
{
 struct dm_dirty_log_type *log_type;

 spin_lock(&_lock);

 log_type = __find_dirty_log_type(name);
 if (log_type && !try_module_get(log_type->module))
  log_type = ((void*)0);

 spin_unlock(&_lock);

 return log_type;
}
