
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store_type {int module; } ;


 int _lock ;
 int module_put (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_type(struct dm_exception_store_type *type)
{
 spin_lock(&_lock);
 module_put(type->module);
 spin_unlock(&_lock);
}
