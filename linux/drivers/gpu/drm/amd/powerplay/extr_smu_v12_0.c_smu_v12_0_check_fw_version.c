
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct smu_context {int smc_if_version; } ;


 int pr_info (char*,int,int,int,int,int,int) ;
 int pr_warn (char*) ;
 int smu_get_smc_version (struct smu_context*,int*,int*) ;

__attribute__((used)) static int smu_v12_0_check_fw_version(struct smu_context *smu)
{
 uint32_t if_version = 0xff, smu_version = 0xff;
 uint16_t smu_major;
 uint8_t smu_minor, smu_debug;
 int ret = 0;

 ret = smu_get_smc_version(smu, &if_version, &smu_version);
 if (ret)
  return ret;

 smu_major = (smu_version >> 16) & 0xffff;
 smu_minor = (smu_version >> 8) & 0xff;
 smu_debug = (smu_version >> 0) & 0xff;
 if (if_version != smu->smc_if_version) {
  pr_info("smu driver if version = 0x%08x, smu fw if version = 0x%08x, "
   "smu fw version = 0x%08x (%d.%d.%d)\n",
   smu->smc_if_version, if_version,
   smu_version, smu_major, smu_minor, smu_debug);
  pr_warn("SMU driver if version not matched\n");
 }

 return ret;
}
