
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int dummy; } ;


 int CM_READ_ONLY ;
 int DMERR (char*,int ,char const*,int) ;
 int __abort_transaction (struct clone*) ;
 int __reload_in_core_bitset (struct clone*) ;
 int __set_clone_mode (struct clone*,int ) ;
 int clone_device_name (struct clone*) ;

__attribute__((used)) static void __metadata_operation_failed(struct clone *clone, const char *op, int r)
{
 DMERR("%s: Metadata operation `%s' failed: error = %d",
       clone_device_name(clone), op, r);

 __abort_transaction(clone);
 __set_clone_mode(clone, CM_READ_ONLY);






 __reload_in_core_bitset(clone);
}
