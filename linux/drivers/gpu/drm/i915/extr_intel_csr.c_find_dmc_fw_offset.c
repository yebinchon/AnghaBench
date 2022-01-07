
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stepping_info {char stepping; char substepping; } ;
struct intel_fw_info {scalar_t__ dmc_id; char substepping; char stepping; int offset; } ;


 int CSR_DEFAULT_FW_OFFSET ;

__attribute__((used)) static u32 find_dmc_fw_offset(const struct intel_fw_info *fw_info,
         unsigned int num_entries,
         const struct stepping_info *si,
         u8 package_ver)
{
 u32 dmc_offset = CSR_DEFAULT_FW_OFFSET;
 unsigned int i;

 for (i = 0; i < num_entries; i++) {
  if (package_ver > 1 && fw_info[i].dmc_id != 0)
   continue;

  if (fw_info[i].substepping == '*' &&
      si->stepping == fw_info[i].stepping) {
   dmc_offset = fw_info[i].offset;
   break;
  }

  if (si->stepping == fw_info[i].stepping &&
      si->substepping == fw_info[i].substepping) {
   dmc_offset = fw_info[i].offset;
   break;
  }

  if (fw_info[i].stepping == '*' &&
      fw_info[i].substepping == '*') {







   dmc_offset = fw_info[i].offset;
  }
 }

 return dmc_offset;
}
