
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cper_mem_err_compact {int validation_bits; int mem_dev_handle; } ;


 int CPER_MEM_VALID_MODULE_HANDLE ;
 size_t CPER_REC_LEN ;
 int dmi_memdev_name (int,char const**,char const**) ;
 size_t snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int cper_dimm_err_location(struct cper_mem_err_compact *mem, char *msg)
{
 u32 len, n;
 const char *bank = ((void*)0), *device = ((void*)0);

 if (!msg || !(mem->validation_bits & CPER_MEM_VALID_MODULE_HANDLE))
  return 0;

 n = 0;
 len = CPER_REC_LEN - 1;
 dmi_memdev_name(mem->mem_dev_handle, &bank, &device);
 if (bank && device)
  n = snprintf(msg, len, "DIMM location: %s %s ", bank, device);
 else
  n = snprintf(msg, len,
        "DIMM location: not present. DMI handle: 0x%.4x ",
        mem->mem_dev_handle);

 msg[n] = '\0';
 return n;
}
