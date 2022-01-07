
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_pportdata {int * port_xmit_discards_vl; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;
typedef int buf ;


 size_t C_VL_15 ;
 int PORT_DISCARD_EGRESS_ERRS ;
 int SEND_EGRESS_ERR_INFO ;
 int SEND_EGRESS_ERR_SOURCE ;
 int TXE_NUM_DATA_VL ;
 int __count_port_discards (struct hfi1_pportdata*) ;
 int dd_dev_info (struct hfi1_devdata*,char*,int,int ,int) ;
 int egress_err_info_string (char*,int,int) ;
 int hweight64 (int) ;
 int incr_cntr64 (int *) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void handle_send_egress_err_info(struct hfi1_devdata *dd,
     int vl)
{
 struct hfi1_pportdata *ppd = dd->pport;
 u64 src = read_csr(dd, SEND_EGRESS_ERR_SOURCE);
 u64 info = read_csr(dd, SEND_EGRESS_ERR_INFO);
 char buf[96];


 write_csr(dd, SEND_EGRESS_ERR_INFO, info);

 dd_dev_info(dd,
      "Egress Error Info: 0x%llx, %s Egress Error Src 0x%llx\n",
      info, egress_err_info_string(buf, sizeof(buf), info), src);


 if (info & PORT_DISCARD_EGRESS_ERRS) {
  int weight, i;
  weight = hweight64(info & PORT_DISCARD_EGRESS_ERRS);
  for (i = 0; i < weight; i++) {
   __count_port_discards(ppd);
   if (vl >= 0 && vl < TXE_NUM_DATA_VL)
    incr_cntr64(&ppd->port_xmit_discards_vl[vl]);
   else if (vl == 15)
    incr_cntr64(&ppd->port_xmit_discards_vl
         [C_VL_15]);
  }
 }
}
