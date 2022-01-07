
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int mgmt_class; } ;
struct opa_mad {TYPE_1__ mad_hdr; } ;
struct ib_wc {int byte_len; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_ibport {int dummy; } ;


 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_REPLY ;
 int IB_MAD_RESULT_SUCCESS ;



 int LIM_MGMT_P_KEY ;
 int hfi1_get_pkey (struct hfi1_ibport*,int) ;
 int hfi1_lookup_pkey_idx (struct hfi1_ibport*,int ) ;
 int hfi1_pkey_validation_pma (struct hfi1_ibport*,struct opa_mad const*,struct ib_wc const*) ;
 int is_local_mad (struct hfi1_ibport*,struct opa_mad const*,struct ib_wc const*) ;
 int opa_local_smp_check (struct hfi1_ibport*,struct ib_wc const*) ;
 int pr_warn (char*,int ) ;
 int process_perf_opa (struct ib_device*,int ,struct opa_mad const*,struct opa_mad*,int*) ;
 int process_subn_opa (struct ib_device*,int,int ,struct opa_mad const*,struct opa_mad*,int*,int) ;
 size_t round_up (int,int) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int hfi1_process_opa_mad(struct ib_device *ibdev, int mad_flags,
    u8 port, const struct ib_wc *in_wc,
    const struct ib_grh *in_grh,
    const struct opa_mad *in_mad,
    struct opa_mad *out_mad, size_t *out_mad_size,
    u16 *out_mad_pkey_index)
{
 int ret;
 int pkey_idx;
 int local_mad = 0;
 u32 resp_len = in_wc->byte_len - sizeof(*in_grh);
 struct hfi1_ibport *ibp = to_iport(ibdev, port);

 pkey_idx = hfi1_lookup_pkey_idx(ibp, LIM_MGMT_P_KEY);
 if (pkey_idx < 0) {
  pr_warn("failed to find limited mgmt pkey, defaulting 0x%x\n",
   hfi1_get_pkey(ibp, 1));
  pkey_idx = 1;
 }
 *out_mad_pkey_index = (u16)pkey_idx;

 switch (in_mad->mad_hdr.mgmt_class) {
 case 129:
 case 128:
  local_mad = is_local_mad(ibp, in_mad, in_wc);
  if (local_mad) {
   ret = opa_local_smp_check(ibp, in_wc);
   if (ret)
    return IB_MAD_RESULT_FAILURE;
  }
  ret = process_subn_opa(ibdev, mad_flags, port, in_mad,
           out_mad, &resp_len, local_mad);
  goto bail;
 case 130:
  ret = hfi1_pkey_validation_pma(ibp, in_mad, in_wc);
  if (ret)
   return IB_MAD_RESULT_FAILURE;

  ret = process_perf_opa(ibdev, port, in_mad, out_mad, &resp_len);
  goto bail;

 default:
  ret = IB_MAD_RESULT_SUCCESS;
 }

bail:
 if (ret & IB_MAD_RESULT_REPLY)
  *out_mad_size = round_up(resp_len, 8);
 else if (ret & IB_MAD_RESULT_SUCCESS)
  *out_mad_size = in_wc->byte_len - sizeof(struct ib_grh);

 return ret;
}
