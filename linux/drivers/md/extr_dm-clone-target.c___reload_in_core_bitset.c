
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int cmd; } ;


 scalar_t__ CM_FAIL ;
 int DMERR (char*,char const*) ;
 int DMINFO (char*,char const*) ;
 int __set_clone_mode (struct clone*,scalar_t__) ;
 char* clone_device_name (struct clone*) ;
 scalar_t__ dm_clone_reload_in_core_bitset (int ) ;
 scalar_t__ get_clone_mode (struct clone*) ;

__attribute__((used)) static void __reload_in_core_bitset(struct clone *clone)
{
 const char *dev_name = clone_device_name(clone);

 if (get_clone_mode(clone) == CM_FAIL)
  return;


 DMINFO("%s: Reloading on-disk bitmap", dev_name);
 if (dm_clone_reload_in_core_bitset(clone->cmd)) {
  DMERR("%s: Failed to reload on-disk bitmap", dev_name);
  __set_clone_mode(clone, CM_FAIL);
 }
}
