
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_type {int module; } ;


 int _lock ;
 int down_read (int *) ;
 int module_put (int ) ;
 int up_read (int *) ;

void dm_put_target_type(struct target_type *tt)
{
 down_read(&_lock);
 module_put(tt->module);
 up_read(&_lock);
}
