
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct device {int dummy; } ;
typedef int fw_name_subset ;
typedef int fw_name_specific ;
struct TYPE_2__ {int x86; int x86_model; } ;


 int ENOENT ;
 char* SEV_FW_FILE ;
 int SEV_FW_NAME_SIZE ;
 TYPE_1__ boot_cpu_data ;
 scalar_t__ firmware_request_nowarn (struct firmware const**,char*,struct device*) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static int sev_get_firmware(struct device *dev,
       const struct firmware **firmware)
{
 char fw_name_specific[SEV_FW_NAME_SIZE];
 char fw_name_subset[SEV_FW_NAME_SIZE];

 snprintf(fw_name_specific, sizeof(fw_name_specific),
   "amd/amd_sev_fam%.2xh_model%.2xh.sbin",
   boot_cpu_data.x86, boot_cpu_data.x86_model);

 snprintf(fw_name_subset, sizeof(fw_name_subset),
   "amd/amd_sev_fam%.2xh_model%.1xxh.sbin",
   boot_cpu_data.x86, (boot_cpu_data.x86_model & 0xf0) >> 4);
 if ((firmware_request_nowarn(firmware, fw_name_specific, dev) >= 0) ||
     (firmware_request_nowarn(firmware, fw_name_subset, dev) >= 0) ||
     (firmware_request_nowarn(firmware, SEV_FW_FILE, dev) >= 0))
  return 0;

 return -ENOENT;
}
