
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct err_info {int syndrome; int channel; int err_code; int csrow; } ;
struct amd64_pvt {int dummy; } ;


 int ERR_CSROW ;
 scalar_t__ dct_ganging_enabled (struct amd64_pvt*) ;
 int error_address_to_page_and_offset (int ,struct err_info*) ;
 int f1x_translate_sysaddr_to_cs (struct amd64_pvt*,int ,int *) ;
 int get_channel_from_ecc_syndrome (struct mem_ctl_info*,int ) ;

__attribute__((used)) static void f1x_map_sysaddr_to_csrow(struct mem_ctl_info *mci, u64 sys_addr,
         struct err_info *err)
{
 struct amd64_pvt *pvt = mci->pvt_info;

 error_address_to_page_and_offset(sys_addr, err);

 err->csrow = f1x_translate_sysaddr_to_cs(pvt, sys_addr, &err->channel);
 if (err->csrow < 0) {
  err->err_code = ERR_CSROW;
  return;
 }






 if (dct_ganging_enabled(pvt))
  err->channel = get_channel_from_ecc_syndrome(mci, err->syndrome);
}
