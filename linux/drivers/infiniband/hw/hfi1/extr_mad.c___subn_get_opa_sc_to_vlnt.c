
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sc2vlnt {int dummy; } ;
struct opa_smp {int status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;


 int FM_TBL_SC2VLNT ;
 int IB_SMP_INVALID_FIELD ;
 int OPA_AM_NPORT (int) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 int fm_get_table (struct hfi1_pportdata*,int ,void*) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (int,int) ;

__attribute__((used)) static int __subn_get_opa_sc_to_vlnt(struct opa_smp *smp, u32 am, u8 *data,
         struct ib_device *ibdev, u8 port,
         u32 *resp_len, u32 max_len)
{
 u32 n_blocks = OPA_AM_NPORT(am);
 struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
 struct hfi1_pportdata *ppd;
 void *vp = (void *)data;
 int size = sizeof(struct sc2vlnt);

 if (n_blocks != 1 || smp_length_check(size, max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 ppd = dd->pport + (port - 1);

 fm_get_table(ppd, FM_TBL_SC2VLNT, vp);

 if (resp_len)
  *resp_len += size;

 return reply((struct ib_mad_hdr *)smp);
}
