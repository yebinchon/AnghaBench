
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
struct core_vmid {int num_vmid; int dc; } ;


 int clear_entry_from_vmid_table (struct core_vmid*,int) ;
 unsigned int dc_get_vmid_use_vector (int ) ;

__attribute__((used)) static void evict_vmids(struct core_vmid *core_vmid)
{
 int i;
 uint16_t ord = dc_get_vmid_use_vector(core_vmid->dc);


 for (i = 1; i < core_vmid->num_vmid; i++) {
  if (ord & (1u << i))
   clear_entry_from_vmid_table(core_vmid, i);
 }
}
