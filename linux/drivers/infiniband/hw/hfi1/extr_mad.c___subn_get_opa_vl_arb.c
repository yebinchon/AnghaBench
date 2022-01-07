
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct opa_smp {int status; int attr_mod; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;


 int FM_TBL_VL_HIGH_ARB ;
 int FM_TBL_VL_LOW_ARB ;
 int FM_TBL_VL_PREEMPT_ELEMS ;
 int FM_TBL_VL_PREEMPT_MATRIX ;
 int IB_SMP_INVALID_FIELD ;
 int OPA_AM_NPORT (int) ;




 int be32_to_cpu (int ) ;
 int fm_get_table (struct hfi1_pportdata*,int ,int*) ;
 struct hfi1_pportdata* ppd_from_ibp (int ) ;
 int pr_warn (char*,int ) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (int,int) ;
 int to_iport (struct ib_device*,int) ;

__attribute__((used)) static int __subn_get_opa_vl_arb(struct opa_smp *smp, u32 am, u8 *data,
     struct ib_device *ibdev, u8 port,
     u32 *resp_len, u32 max_len)
{
 struct hfi1_pportdata *ppd = ppd_from_ibp(to_iport(ibdev, port));
 u32 num_ports = OPA_AM_NPORT(am);
 u8 section = (am & 0x00ff0000) >> 16;
 u8 *p = data;
 int size = 256;

 if (num_ports != 1 || smp_length_check(size, max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 switch (section) {
 case 130:
  fm_get_table(ppd, FM_TBL_VL_LOW_ARB, p);
  break;
 case 131:
  fm_get_table(ppd, FM_TBL_VL_HIGH_ARB, p);
  break;
 case 129:
  fm_get_table(ppd, FM_TBL_VL_PREEMPT_ELEMS, p);
  break;
 case 128:
  fm_get_table(ppd, FM_TBL_VL_PREEMPT_MATRIX, p);
  break;
 default:
  pr_warn("OPA SubnGet(VL Arb) AM Invalid : 0x%x\n",
   be32_to_cpu(smp->attr_mod));
  smp->status |= IB_SMP_INVALID_FIELD;
  size = 0;
  break;
 }

 if (size > 0 && resp_len)
  *resp_len += size;

 return reply((struct ib_mad_hdr *)smp);
}
