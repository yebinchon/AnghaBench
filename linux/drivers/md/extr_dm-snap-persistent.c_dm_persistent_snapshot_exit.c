
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _persistent_compat_type ;
 int _persistent_type ;
 int dm_exception_store_type_unregister (int *) ;

void dm_persistent_snapshot_exit(void)
{
 dm_exception_store_type_unregister(&_persistent_type);
 dm_exception_store_type_unregister(&_persistent_compat_type);
}
