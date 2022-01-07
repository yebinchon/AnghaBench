
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_return (int *) ;
 int edac_dbg (int ,char*) ;
 int edac_pci_sysfs_refcount ;
 int edac_pci_top_main_kobj ;
 int kobject_put (int ) ;

__attribute__((used)) static void edac_pci_main_kobj_teardown(void)
{
 edac_dbg(0, "\n");





 if (atomic_dec_return(&edac_pci_sysfs_refcount) == 0) {
  edac_dbg(0, "called kobject_put on main kobj\n");
  kobject_put(edac_pci_top_main_kobj);
 }
}
