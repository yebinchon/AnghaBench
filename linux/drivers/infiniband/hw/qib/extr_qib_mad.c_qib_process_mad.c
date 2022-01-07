
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qib_pportdata {int congestion_entries_shadow; } ;
struct qib_ibport {int dummy; } ;
struct ib_wc {int dummy; } ;
struct ib_mad_hdr {int dummy; } ;
struct TYPE_2__ {int mgmt_class; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_SUCCESS ;




 scalar_t__ WARN_ON_ONCE (int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int process_cc (struct ib_device*,int,int ,struct ib_mad const*,struct ib_mad*) ;
 int process_perf (struct ib_device*,int ,struct ib_mad const*,struct ib_mad*) ;
 int process_subn (struct ib_device*,int,int ,struct ib_mad const*,struct ib_mad*) ;
 int qib_cc_table_size ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

int qib_process_mad(struct ib_device *ibdev, int mad_flags, u8 port,
      const struct ib_wc *in_wc, const struct ib_grh *in_grh,
      const struct ib_mad_hdr *in, size_t in_mad_size,
      struct ib_mad_hdr *out, size_t *out_mad_size,
      u16 *out_mad_pkey_index)
{
 int ret;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 const struct ib_mad *in_mad = (const struct ib_mad *)in;
 struct ib_mad *out_mad = (struct ib_mad *)out;

 if (WARN_ON_ONCE(in_mad_size != sizeof(*in_mad) ||
    *out_mad_size != sizeof(*out_mad)))
  return IB_MAD_RESULT_FAILURE;

 switch (in_mad->mad_hdr.mgmt_class) {
 case 129:
 case 128:
  ret = process_subn(ibdev, mad_flags, port, in_mad, out_mad);
  goto bail;

 case 130:
  ret = process_perf(ibdev, port, in_mad, out_mad);
  goto bail;

 case 131:
  if (!ppd->congestion_entries_shadow ||
    !qib_cc_table_size) {
   ret = IB_MAD_RESULT_SUCCESS;
   goto bail;
  }
  ret = process_cc(ibdev, mad_flags, port, in_mad, out_mad);
  goto bail;

 default:
  ret = IB_MAD_RESULT_SUCCESS;
 }

bail:
 return ret;
}
