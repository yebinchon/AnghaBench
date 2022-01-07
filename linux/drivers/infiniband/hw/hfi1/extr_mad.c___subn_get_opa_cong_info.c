
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct opa_smp {int status; } ;
struct opa_congestion_info_attr {int congestion_log_length; int control_table_cap; scalar_t__ congestion_info; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int cc_max_table_entries; } ;
struct hfi1_ibport {int dummy; } ;


 int IB_SMP_INVALID_FIELD ;
 int OPA_CONG_LOG_ELEMS ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (int,int) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int __subn_get_opa_cong_info(struct opa_smp *smp, u32 am, u8 *data,
        struct ib_device *ibdev, u8 port,
        u32 *resp_len, u32 max_len)
{
 struct opa_congestion_info_attr *p =
  (struct opa_congestion_info_attr *)data;
 struct hfi1_ibport *ibp = to_iport(ibdev, port);
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);

 if (smp_length_check(sizeof(*p), max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 p->congestion_info = 0;
 p->control_table_cap = ppd->cc_max_table_entries;
 p->congestion_log_length = OPA_CONG_LOG_ELEMS;

 if (resp_len)
  *resp_len += sizeof(*p);

 return reply((struct ib_mad_hdr *)smp);
}
