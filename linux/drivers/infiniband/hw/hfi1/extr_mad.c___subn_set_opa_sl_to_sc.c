
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct opa_smp {int status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_ibport {scalar_t__* sl_to_sc; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int IB_SMP_INVALID_FIELD ;
 int __subn_get_opa_sl_to_sc (struct opa_smp*,scalar_t__,scalar_t__*,struct ib_device*,scalar_t__,scalar_t__*,scalar_t__) ;
 int hfi1_error_port_qps (struct hfi1_ibport*,int) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (size_t,scalar_t__) ;
 struct hfi1_ibport* to_iport (struct ib_device*,scalar_t__) ;

__attribute__((used)) static int __subn_set_opa_sl_to_sc(struct opa_smp *smp, u32 am, u8 *data,
       struct ib_device *ibdev, u8 port,
       u32 *resp_len, u32 max_len)
{
 struct hfi1_ibport *ibp = to_iport(ibdev, port);
 u8 *p = data;
 size_t size = ARRAY_SIZE(ibp->sl_to_sc);
 int i;
 u8 sc;

 if (am || smp_length_check(size, max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 for (i = 0; i < ARRAY_SIZE(ibp->sl_to_sc); i++) {
  sc = *p++;
  if (ibp->sl_to_sc[i] != sc) {
   ibp->sl_to_sc[i] = sc;


   hfi1_error_port_qps(ibp, i);
  }
 }

 return __subn_get_opa_sl_to_sc(smp, am, data, ibdev, port, resp_len,
           max_len);
}
