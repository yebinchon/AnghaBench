
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct opa_smp {int status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_devdata {int dummy; } ;


 int IB_SMP_INVALID_FIELD ;
 int OPA_AM_NBLK (int) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 int get_sc2vlt_tables (struct hfi1_devdata*,void*) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (size_t,int) ;

__attribute__((used)) static int __subn_get_opa_sc_to_vlt(struct opa_smp *smp, u32 am, u8 *data,
        struct ib_device *ibdev, u8 port,
        u32 *resp_len, u32 max_len)
{
 u32 n_blocks = OPA_AM_NBLK(am);
 struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
 void *vp = (void *)data;
 size_t size = 4 * sizeof(u64);

 if (n_blocks != 1 || smp_length_check(size, max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 get_sc2vlt_tables(dd, vp);

 if (resp_len)
  *resp_len += size;

 return reply((struct ib_mad_hdr *)smp);
}
