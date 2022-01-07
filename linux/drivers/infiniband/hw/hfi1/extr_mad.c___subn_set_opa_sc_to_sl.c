
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct opa_smp {int status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_ibport {int * sc_to_sl; } ;


 int ARRAY_SIZE (int *) ;
 int IB_SMP_INVALID_FIELD ;
 int __subn_get_opa_sc_to_sl (struct opa_smp*,scalar_t__,int *,struct ib_device*,int ,scalar_t__*,scalar_t__) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (size_t,scalar_t__) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int __subn_set_opa_sc_to_sl(struct opa_smp *smp, u32 am, u8 *data,
       struct ib_device *ibdev, u8 port,
       u32 *resp_len, u32 max_len)
{
 struct hfi1_ibport *ibp = to_iport(ibdev, port);
 size_t size = ARRAY_SIZE(ibp->sc_to_sl);
 u8 *p = data;
 int i;

 if (am || smp_length_check(size, max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 for (i = 0; i < ARRAY_SIZE(ibp->sc_to_sl); i++)
  ibp->sc_to_sl[i] = *p++;

 return __subn_get_opa_sc_to_sl(smp, am, data, ibdev, port, resp_len,
           max_len);
}
