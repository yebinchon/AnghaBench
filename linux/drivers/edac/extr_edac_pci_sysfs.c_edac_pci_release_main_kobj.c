
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int THIS_MODULE ;
 int edac_dbg (int ,char*) ;
 int kfree (struct kobject*) ;
 int module_put (int ) ;

__attribute__((used)) static void edac_pci_release_main_kobj(struct kobject *kobj)
{
 edac_dbg(0, "here to module_put(THIS_MODULE)\n");

 kfree(kobj);




 module_put(THIS_MODULE);
}
