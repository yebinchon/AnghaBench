
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _transient_compat_type ;
 int _transient_type ;
 int dm_exception_store_type_unregister (int *) ;

void dm_transient_snapshot_exit(void)
{
 dm_exception_store_type_unregister(&_transient_type);
 dm_exception_store_type_unregister(&_transient_compat_type);
}
