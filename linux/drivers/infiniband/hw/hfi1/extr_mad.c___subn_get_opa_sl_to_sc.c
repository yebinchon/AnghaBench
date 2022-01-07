
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct opa_smp {int status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_ibport {int * sl_to_sc; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int IB_SMP_INVALID_FIELD ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (size_t,size_t) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int __subn_get_opa_sl_to_sc(struct opa_smp *smp, u32 am, u8 *data,
       struct ib_device *ibdev, u8 port,
       u32 *resp_len, u32 max_len)
{
 struct hfi1_ibport *ibp = to_iport(ibdev, port);
 u8 *p = data;
 size_t size = ARRAY_SIZE(ibp->sl_to_sc);
 unsigned i;

 if (am || smp_length_check(size, max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 for (i = 0; i < ARRAY_SIZE(ibp->sl_to_sc); i++)
  *p++ = ibp->sl_to_sc[i];

 if (resp_len)
  *resp_len += size;

 return reply((struct ib_mad_hdr *)smp);
}
