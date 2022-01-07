
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sec_err; int ded_err; } ;
union cvmx_lmcx_mem_cfg0 {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {int fdimm; int fbunk; int fbank; int frow; int fcol; } ;
union cvmx_lmcx_fadr {TYPE_1__ cn30xx; void* u64; } ;
struct mem_ctl_info {int mc_idx; } ;
typedef int msg ;


 int CVMX_LMCX_FADR (int ) ;
 int CVMX_LMCX_MEM_CFG0 (int ) ;
 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,int ,int,int,int,char*,char*) ;
 int snprintf (char*,int,char*,int,int,int,int,int) ;

__attribute__((used)) static void octeon_lmc_edac_poll(struct mem_ctl_info *mci)
{
 union cvmx_lmcx_mem_cfg0 cfg0;
 bool do_clear = 0;
 char msg[64];

 cfg0.u64 = cvmx_read_csr(CVMX_LMCX_MEM_CFG0(mci->mc_idx));
 if (cfg0.s.sec_err || cfg0.s.ded_err) {
  union cvmx_lmcx_fadr fadr;
  fadr.u64 = cvmx_read_csr(CVMX_LMCX_FADR(mci->mc_idx));
  snprintf(msg, sizeof(msg),
    "DIMM %d rank %d bank %d row %d col %d",
    fadr.cn30xx.fdimm, fadr.cn30xx.fbunk,
    fadr.cn30xx.fbank, fadr.cn30xx.frow, fadr.cn30xx.fcol);
 }

 if (cfg0.s.sec_err) {
  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1, 0, 0, 0,
         -1, -1, -1, msg, "");
  cfg0.s.sec_err = -1;
  do_clear = 1;
 }

 if (cfg0.s.ded_err) {
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
         -1, -1, -1, msg, "");
  cfg0.s.ded_err = -1;
  do_clear = 1;
 }
 if (do_clear)
  cvmx_write_csr(CVMX_LMCX_MEM_CFG0(mci->mc_idx), cfg0.u64);
}
