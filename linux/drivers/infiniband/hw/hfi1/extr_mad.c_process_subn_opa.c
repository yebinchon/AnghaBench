
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int return_path; int dr_slid; } ;
struct TYPE_4__ {TYPE_1__ dr; } ;
struct opa_smp {scalar_t__ attr_id; scalar_t__ class_version; int method; int status; int hop_cnt; TYPE_2__ route; int mkey; int attr_mod; } ;
struct opa_mad {int dummy; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {scalar_t__ phys_port_cnt; } ;
struct hfi1_ibport {int dummy; } ;
typedef scalar_t__ __be16 ;


 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_SUCCESS ;







 scalar_t__ IB_SMP_ATTR_PORT_INFO ;
 int IB_SMP_UNSUP_METHOD ;
 int IB_SMP_UNSUP_VERSION ;

 scalar_t__ OPA_SM_CLASS_VERSION ;
 scalar_t__ be32_to_cpu (int ) ;
 int check_mkey (struct hfi1_ibport*,struct ib_mad_hdr*,int,int ,int ,int ,int ) ;
 int clear_opa_smp_data (struct opa_smp*) ;
 scalar_t__* opa_get_smp_data (struct opa_smp*) ;
 scalar_t__ opa_get_smp_data_size (struct opa_smp*) ;
 scalar_t__ opa_get_smp_header_size (struct opa_smp*) ;
 int reply (struct ib_mad_hdr*) ;
 int subn_get_opa_aggregate (struct opa_smp*,struct ib_device*,scalar_t__,scalar_t__*) ;
 int subn_get_opa_sma (scalar_t__,struct opa_smp*,scalar_t__,scalar_t__*,struct ib_device*,scalar_t__,scalar_t__*,scalar_t__) ;
 int subn_handle_opa_trap_repress (struct hfi1_ibport*,struct opa_smp*) ;
 int subn_set_opa_aggregate (struct opa_smp*,struct ib_device*,scalar_t__,scalar_t__*,int) ;
 int subn_set_opa_sma (scalar_t__,struct opa_smp*,scalar_t__,scalar_t__*,struct ib_device*,scalar_t__,scalar_t__*,scalar_t__,int) ;
 struct hfi1_ibport* to_iport (struct ib_device*,scalar_t__) ;

__attribute__((used)) static int process_subn_opa(struct ib_device *ibdev, int mad_flags,
       u8 port, const struct opa_mad *in_mad,
       struct opa_mad *out_mad,
       u32 *resp_len, int local_mad)
{
 struct opa_smp *smp = (struct opa_smp *)out_mad;
 struct hfi1_ibport *ibp = to_iport(ibdev, port);
 u8 *data;
 u32 am, data_size;
 __be16 attr_id;
 int ret;

 *out_mad = *in_mad;
 data = opa_get_smp_data(smp);
 data_size = (u32)opa_get_smp_data_size(smp);

 am = be32_to_cpu(smp->attr_mod);
 attr_id = smp->attr_id;
 if (smp->class_version != OPA_SM_CLASS_VERSION) {
  smp->status |= IB_SMP_UNSUP_VERSION;
  ret = reply((struct ib_mad_hdr *)smp);
  return ret;
 }
 ret = check_mkey(ibp, (struct ib_mad_hdr *)smp, mad_flags, smp->mkey,
    smp->route.dr.dr_slid, smp->route.dr.return_path,
    smp->hop_cnt);
 if (ret) {
  u32 port_num = be32_to_cpu(smp->attr_mod);
  if (attr_id == IB_SMP_ATTR_PORT_INFO &&
      (smp->method == 135 ||
       smp->method == 131) &&
      port_num && port_num <= ibdev->phys_port_cnt &&
      port != port_num)
   (void)check_mkey(to_iport(ibdev, port_num),
       (struct ib_mad_hdr *)smp, 0,
       smp->mkey, smp->route.dr.dr_slid,
       smp->route.dr.return_path,
       smp->hop_cnt);
  ret = IB_MAD_RESULT_FAILURE;
  return ret;
 }

 *resp_len = opa_get_smp_header_size(smp);

 switch (smp->method) {
 case 135:
  switch (attr_id) {
  default:
   clear_opa_smp_data(smp);
   ret = subn_get_opa_sma(attr_id, smp, am, data,
            ibdev, port, resp_len,
            data_size);
   break;
  case 128:
   ret = subn_get_opa_aggregate(smp, ibdev, port,
           resp_len);
   break;
  }
  break;
 case 131:
  switch (attr_id) {
  default:
   ret = subn_set_opa_sma(attr_id, smp, am, data,
            ibdev, port, resp_len,
            data_size, local_mad);
   break;
  case 128:
   ret = subn_set_opa_aggregate(smp, ibdev, port,
           resp_len, local_mad);
   break;
  }
  break;
 case 130:
 case 133:
 case 132:
 case 134:





  ret = IB_MAD_RESULT_SUCCESS;
  break;
 case 129:
  subn_handle_opa_trap_repress(ibp, smp);

  ret = IB_MAD_RESULT_SUCCESS;
  break;
 default:
  smp->status |= IB_SMP_UNSUP_METHOD;
  ret = reply((struct ib_mad_hdr *)smp);
  break;
 }

 return ret;
}
