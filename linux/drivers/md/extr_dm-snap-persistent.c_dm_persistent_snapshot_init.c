
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMERR (char*) ;
 int _persistent_compat_type ;
 int _persistent_type ;
 int dm_exception_store_type_register (int *) ;
 int dm_exception_store_type_unregister (int *) ;

int dm_persistent_snapshot_init(void)
{
 int r;

 r = dm_exception_store_type_register(&_persistent_type);
 if (r) {
  DMERR("Unable to register persistent exception store type");
  return r;
 }

 r = dm_exception_store_type_register(&_persistent_compat_type);
 if (r) {
  DMERR("Unable to register old-style persistent exception "
        "store type");
  dm_exception_store_type_unregister(&_persistent_type);
  return r;
 }

 return r;
}
