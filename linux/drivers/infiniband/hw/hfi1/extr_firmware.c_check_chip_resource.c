
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int hfi1_id; } ;


 int ASIC_CFG_SCRATCH ;
 int CR_DYN_MASK ;
 int dd_dev_warn (struct hfi1_devdata*,char*,char const*,int ,int) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int resource_mask (int ,int) ;

bool check_chip_resource(struct hfi1_devdata *dd, u32 resource,
    const char *func)
{
 u64 scratch0, bit;

 if (resource & CR_DYN_MASK)
  bit = resource_mask(dd->hfi1_id, resource);
 else
  bit = resource;

 scratch0 = read_csr(dd, ASIC_CFG_SCRATCH);
 if ((scratch0 & bit) == 0) {
  if (func)
   dd_dev_warn(dd,
        "%s: id %d, resource 0x%x, not acquired!\n",
        func, dd->hfi1_id, resource);
  return 0;
 }
 return 1;
}
