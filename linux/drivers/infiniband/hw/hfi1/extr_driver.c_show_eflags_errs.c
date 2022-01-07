
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_packet {int rhf; struct hfi1_ctxtdata* rcd; } ;
struct hfi1_ctxtdata {int ctxt; int dd; } ;


 int RHF_DC_ERR ;
 int RHF_DC_UNC_ERR ;
 int RHF_ECC_ERR ;
 int RHF_ICRC_ERR ;
 int RHF_K_HDR_LEN_ERR ;
 int RHF_LEN_ERR ;
 int RHF_TID_ERR ;
 int dd_dev_err (int ,char*,int ,int,char*,char*,char*,char*,char*,char*,char*,int ) ;
 int rhf_rcv_type_err (int) ;

__attribute__((used)) static void show_eflags_errs(struct hfi1_packet *packet)
{
 struct hfi1_ctxtdata *rcd = packet->rcd;
 u32 rte = rhf_rcv_type_err(packet->rhf);

 dd_dev_err(rcd->dd,
     "receive context %d: rhf 0x%016llx, errs [ %s%s%s%s%s%s%s] rte 0x%x\n",
     rcd->ctxt, packet->rhf,
     packet->rhf & RHF_K_HDR_LEN_ERR ? "k_hdr_len " : "",
     packet->rhf & RHF_DC_UNC_ERR ? "dc_unc " : "",
     packet->rhf & RHF_DC_ERR ? "dc " : "",
     packet->rhf & RHF_TID_ERR ? "tid " : "",
     packet->rhf & RHF_LEN_ERR ? "len " : "",
     packet->rhf & RHF_ECC_ERR ? "ecc " : "",
     packet->rhf & RHF_ICRC_ERR ? "icrc " : "",
     rte);
}
