
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct opa_smp {int status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;
struct buffer_control {int dummy; } ;


 int FM_TBL_BUFFER_CONTROL ;
 int IB_SMP_INVALID_FIELD ;
 int OPA_AM_NPORT (int) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 int fm_get_table (struct hfi1_pportdata*,int ,struct buffer_control*) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (int,int) ;
 int trace_bct_get (struct hfi1_devdata*,struct buffer_control*) ;

__attribute__((used)) static int __subn_get_opa_bct(struct opa_smp *smp, u32 am, u8 *data,
         struct ib_device *ibdev, u8 port, u32 *resp_len,
         u32 max_len)
{
 u32 num_ports = OPA_AM_NPORT(am);
 struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
 struct hfi1_pportdata *ppd;
 struct buffer_control *p = (struct buffer_control *)data;
 int size = sizeof(struct buffer_control);

 if (num_ports != 1 || smp_length_check(size, max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 ppd = dd->pport + (port - 1);
 fm_get_table(ppd, FM_TBL_BUFFER_CONTROL, p);
 trace_bct_get(dd, p);
 if (resp_len)
  *resp_len += size;

 return reply((struct ib_mad_hdr *)smp);
}
