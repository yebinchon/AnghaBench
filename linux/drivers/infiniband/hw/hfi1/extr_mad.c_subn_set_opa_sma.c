
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct opa_smp {int status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int port_cap_flags; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;
typedef int __be16 ;


 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_SUCCESS ;
 int IB_PORT_SM ;
 int IB_PORT_SM_DISABLED ;





 int IB_SMP_UNSUP_METH_ATTR ;
 int __subn_set_opa_bct (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_cc_table (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_cong_setting (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_led_info (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_pkeytable (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_portinfo (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ,int) ;
 int __subn_set_opa_psi (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ,int) ;
 int __subn_set_opa_sc_to_sl (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_sc_to_vlnt (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_sc_to_vlt (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_sl_to_sc (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int __subn_set_opa_vl_arb (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int reply (struct ib_mad_hdr*) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int subn_set_opa_sma(__be16 attr_id, struct opa_smp *smp, u32 am,
       u8 *data, struct ib_device *ibdev, u8 port,
       u32 *resp_len, u32 max_len, int local_mad)
{
 int ret;
 struct hfi1_ibport *ibp = to_iport(ibdev, port);

 switch (attr_id) {
 case 138:
  ret = __subn_set_opa_portinfo(smp, am, data, ibdev, port,
           resp_len, max_len, local_mad);
  break;
 case 139:
  ret = __subn_set_opa_pkeytable(smp, am, data, ibdev, port,
            resp_len, max_len);
  break;
 case 128:
  ret = __subn_set_opa_sl_to_sc(smp, am, data, ibdev, port,
           resp_len, max_len);
  break;
 case 131:
  ret = __subn_set_opa_sc_to_sl(smp, am, data, ibdev, port,
           resp_len, max_len);
  break;
 case 129:
  ret = __subn_set_opa_sc_to_vlt(smp, am, data, ibdev, port,
            resp_len, max_len);
  break;
 case 130:
  ret = __subn_set_opa_sc_to_vlnt(smp, am, data, ibdev, port,
      resp_len, max_len);
  break;
 case 132:
  ret = __subn_set_opa_psi(smp, am, data, ibdev, port,
      resp_len, max_len, local_mad);
  break;
 case 135:
  ret = __subn_set_opa_bct(smp, am, data, ibdev, port,
      resp_len, max_len);
  break;
 case 136:
  ret = __subn_set_opa_vl_arb(smp, am, data, ibdev, port,
         resp_len, max_len);
  break;
 case 133:
  ret = __subn_set_opa_cong_setting(smp, am, data, ibdev,
        port, resp_len, max_len);
  break;
 case 134:
  ret = __subn_set_opa_cc_table(smp, am, data, ibdev, port,
           resp_len, max_len);
  break;
 case 140:
  ret = __subn_set_opa_led_info(smp, am, data, ibdev, port,
           resp_len, max_len);
  break;
 case 137:
  if (ibp->rvp.port_cap_flags & IB_PORT_SM_DISABLED)
   return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
  if (ibp->rvp.port_cap_flags & IB_PORT_SM)
   return IB_MAD_RESULT_SUCCESS;

 default:
  smp->status |= IB_SMP_UNSUP_METH_ATTR;
  ret = reply((struct ib_mad_hdr *)smp);
  break;
 }
 return ret;
}
