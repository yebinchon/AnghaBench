
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct err_info {scalar_t__ csrow; int channel; int err_code; int syndrome; int src_mci; } ;
struct amd64_pvt {int nbcfg; } ;


 int BIT (int) ;
 int ERR_CHANNEL ;
 int ERR_CSROW ;
 int ERR_NODE ;
 int NBCFG_CHIPKILL ;
 int amd64_mc_err (struct mem_ctl_info*,char*,unsigned long) ;
 int amd64_mc_warn (int ,char*,int ) ;
 int error_address_to_page_and_offset (int,struct err_info*) ;
 int find_mc_by_sys_addr (struct mem_ctl_info*,int) ;
 int get_channel_from_ecc_syndrome (struct mem_ctl_info*,int ) ;
 scalar_t__ sys_addr_to_csrow (int ,int) ;

__attribute__((used)) static void k8_map_sysaddr_to_csrow(struct mem_ctl_info *mci, u64 sys_addr,
        struct err_info *err)
{
 struct amd64_pvt *pvt = mci->pvt_info;

 error_address_to_page_and_offset(sys_addr, err);





 err->src_mci = find_mc_by_sys_addr(mci, sys_addr);
 if (!err->src_mci) {
  amd64_mc_err(mci, "failed to map error addr 0x%lx to a node\n",
        (unsigned long)sys_addr);
  err->err_code = ERR_NODE;
  return;
 }


 err->csrow = sys_addr_to_csrow(err->src_mci, sys_addr);
 if (err->csrow < 0) {
  err->err_code = ERR_CSROW;
  return;
 }


 if (pvt->nbcfg & NBCFG_CHIPKILL) {
  err->channel = get_channel_from_ecc_syndrome(mci, err->syndrome);
  if (err->channel < 0) {





   amd64_mc_warn(err->src_mci, "unknown syndrome 0x%04x - "
          "possible error reporting race\n",
          err->syndrome);
   err->err_code = ERR_CHANNEL;
   return;
  }
 } else {
  err->channel = ((sys_addr & BIT(3)) != 0);
 }
}
