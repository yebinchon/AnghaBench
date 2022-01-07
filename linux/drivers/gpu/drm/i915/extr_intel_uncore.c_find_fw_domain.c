
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int fw_domains; int fw_domains_table_entries; int fw_domains_table; } ;
struct intel_forcewake_range {int domains; } ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;


 struct intel_forcewake_range* BSEARCH (int ,int ,int ,int ) ;
 int FORCEWAKE_ALL ;
 int WARN (int,char*,int,int ) ;
 int fw_range_cmp ;

__attribute__((used)) static enum forcewake_domains
find_fw_domain(struct intel_uncore *uncore, u32 offset)
{
 const struct intel_forcewake_range *entry;

 entry = BSEARCH(offset,
   uncore->fw_domains_table,
   uncore->fw_domains_table_entries,
   fw_range_cmp);

 if (!entry)
  return 0;






 if (entry->domains == FORCEWAKE_ALL)
  return uncore->fw_domains;

 WARN(entry->domains & ~uncore->fw_domains,
      "Uninitialized forcewake domain(s) 0x%x accessed at 0x%x\n",
      entry->domains & ~uncore->fw_domains, offset);

 return entry->domains;
}
