
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_pportdata {int host_link_state; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;


 int EBUSY ;
 int HLS_GOING_OFFLINE ;
 int HLS_GOING_UP ;
 int HLS_UP ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;
 int write_lcb_via_8051 (struct hfi1_devdata*,int ,int ) ;

int write_lcb_csr(struct hfi1_devdata *dd, u32 addr, u64 data)
{
 struct hfi1_pportdata *ppd = dd->pport;


 if (ppd->host_link_state & HLS_UP)
  return write_lcb_via_8051(dd, addr, data);

 if (ppd->host_link_state & (HLS_GOING_UP | HLS_GOING_OFFLINE))
  return -EBUSY;

 write_csr(dd, addr, data);
 return 0;
}
