
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_vmid {int dummy; } ;
struct core_vmid {int dummy; } ;


 struct core_vmid* MOD_VMID_TO_CORE (struct mod_vmid*) ;
 int kfree (struct core_vmid*) ;

void mod_vmid_destroy(struct mod_vmid *mod_vmid)
{
 if (mod_vmid != ((void*)0)) {
  struct core_vmid *core_vmid = MOD_VMID_TO_CORE(mod_vmid);

  kfree(core_vmid);
 }
}
