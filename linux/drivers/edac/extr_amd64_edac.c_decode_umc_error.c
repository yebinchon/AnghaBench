
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct mce {int status; int synd; int addr; } ;
struct err_info {int syndrome; int csrow; int err_code; int channel; } ;
struct amd64_pvt {int mc_node_id; } ;
typedef int err ;


 int ERR_CHANNEL ;
 int ERR_NORM_ADDR ;
 int ERR_SYND ;
 int GENMASK (int,int ) ;
 int MCI_STATUS_DEFERRED ;
 int MCI_STATUS_SYNDV ;
 int __log_ecc_error (struct mem_ctl_info*,struct err_info*,int) ;
 struct mem_ctl_info* edac_mc_find (int) ;
 int error_address_to_page_and_offset (int ,struct err_info*) ;
 int find_umc_channel (struct mce*) ;
 int memset (struct err_info*,int ,int) ;
 scalar_t__ umc_normaddr_to_sysaddr (int ,int ,int ,int *) ;

__attribute__((used)) static void decode_umc_error(int node_id, struct mce *m)
{
 u8 ecc_type = (m->status >> 45) & 0x3;
 struct mem_ctl_info *mci;
 struct amd64_pvt *pvt;
 struct err_info err;
 u64 sys_addr;

 mci = edac_mc_find(node_id);
 if (!mci)
  return;

 pvt = mci->pvt_info;

 memset(&err, 0, sizeof(err));

 if (m->status & MCI_STATUS_DEFERRED)
  ecc_type = 3;

 err.channel = find_umc_channel(m);

 if (!(m->status & MCI_STATUS_SYNDV)) {
  err.err_code = ERR_SYND;
  goto log_error;
 }

 if (ecc_type == 2) {
  u8 length = (m->synd >> 18) & 0x3f;

  if (length)
   err.syndrome = (m->synd >> 32) & GENMASK(length - 1, 0);
  else
   err.err_code = ERR_CHANNEL;
 }

 err.csrow = m->synd & 0x7;

 if (umc_normaddr_to_sysaddr(m->addr, pvt->mc_node_id, err.channel, &sys_addr)) {
  err.err_code = ERR_NORM_ADDR;
  goto log_error;
 }

 error_address_to_page_and_offset(sys_addr, &err);

log_error:
 __log_ecc_error(mci, &err, ecc_type);
}
