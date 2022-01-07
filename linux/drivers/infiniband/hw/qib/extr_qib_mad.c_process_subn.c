
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qib_pportdata {TYPE_3__* dd; } ;
struct TYPE_5__ {int port_cap_flags; } ;
struct qib_ibport {TYPE_2__ rvp; } ;
struct ib_smp {int class_version; int method; int status; int * data; int attr_id; int attr_mod; } ;
struct TYPE_4__ {scalar_t__ attr_id; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {scalar_t__ phys_port_cnt; } ;
struct TYPE_6__ {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int ) ;} ;


 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_SUCCESS ;
 int IB_PORT_SM ;
 int IB_PORT_SM_DISABLED ;



 int IB_SMP_ATTR_NOTICE ;





 int IB_SMP_UNSUP_METHOD ;
 int IB_SMP_UNSUP_METH_ATTR ;
 int IB_SMP_UNSUP_VERSION ;
 int QIB_IB_CFG_PORT ;
 int QIB_VENDOR_IPG ;
 scalar_t__ be32_to_cpu (int ) ;
 int check_mkey (struct qib_ibport*,struct ib_smp*,int) ;
 int ib_get_smp_direction (struct ib_smp*) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int reply (struct ib_smp*) ;
 int stub1 (struct qib_pportdata*,int ,int ) ;
 int subn_get_guidinfo (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_get_nodedescription (struct ib_smp*,struct ib_device*) ;
 int subn_get_nodeinfo (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_get_pkeytable (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_get_portinfo (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_get_sl_to_vl (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_get_vl_arb (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_set_guidinfo (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_set_pkeytable (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_set_portinfo (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_set_sl_to_vl (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_set_vl_arb (struct ib_smp*,struct ib_device*,scalar_t__) ;
 int subn_trap_repress (struct ib_smp*,struct ib_device*,scalar_t__) ;
 struct qib_ibport* to_iport (struct ib_device*,scalar_t__) ;

__attribute__((used)) static int process_subn(struct ib_device *ibdev, int mad_flags,
   u8 port, const struct ib_mad *in_mad,
   struct ib_mad *out_mad)
{
 struct ib_smp *smp = (struct ib_smp *)out_mad;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 int ret;

 *out_mad = *in_mad;
 if (smp->class_version != 1) {
  smp->status |= IB_SMP_UNSUP_VERSION;
  ret = reply(smp);
  goto bail;
 }

 ret = check_mkey(ibp, smp, mad_flags);
 if (ret) {
  u32 port_num = be32_to_cpu(smp->attr_mod);
  if (in_mad->mad_hdr.attr_id == 131 &&
      (smp->method == 143 ||
       smp->method == 138) &&
      port_num && port_num <= ibdev->phys_port_cnt &&
      port != port_num)
   (void) check_mkey(to_iport(ibdev, port_num), smp, 0);
  ret = IB_MAD_RESULT_FAILURE;
  goto bail;
 }

 switch (smp->method) {
 case 143:
  switch (smp->attr_id) {
  case 134:
   ret = subn_get_nodedescription(smp, ibdev);
   goto bail;
  case 133:
   ret = subn_get_nodeinfo(smp, ibdev, port);
   goto bail;
  case 135:
   ret = subn_get_guidinfo(smp, ibdev, port);
   goto bail;
  case 131:
   ret = subn_get_portinfo(smp, ibdev, port);
   goto bail;
  case 132:
   ret = subn_get_pkeytable(smp, ibdev, port);
   goto bail;
  case 130:
   ret = subn_get_sl_to_vl(smp, ibdev, port);
   goto bail;
  case 128:
   ret = subn_get_vl_arb(smp, ibdev, port);
   goto bail;
  case 129:
   if (ibp->rvp.port_cap_flags & IB_PORT_SM_DISABLED) {
    ret = IB_MAD_RESULT_SUCCESS |
     IB_MAD_RESULT_CONSUMED;
    goto bail;
   }
   if (ibp->rvp.port_cap_flags & IB_PORT_SM) {
    ret = IB_MAD_RESULT_SUCCESS;
    goto bail;
   }

  default:
   smp->status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply(smp);
   goto bail;
  }

 case 138:
  switch (smp->attr_id) {
  case 135:
   ret = subn_set_guidinfo(smp, ibdev, port);
   goto bail;
  case 131:
   ret = subn_set_portinfo(smp, ibdev, port);
   goto bail;
  case 132:
   ret = subn_set_pkeytable(smp, ibdev, port);
   goto bail;
  case 130:
   ret = subn_set_sl_to_vl(smp, ibdev, port);
   goto bail;
  case 128:
   ret = subn_set_vl_arb(smp, ibdev, port);
   goto bail;
  case 129:
   if (ibp->rvp.port_cap_flags & IB_PORT_SM_DISABLED) {
    ret = IB_MAD_RESULT_SUCCESS |
     IB_MAD_RESULT_CONSUMED;
    goto bail;
   }
   if (ibp->rvp.port_cap_flags & IB_PORT_SM) {
    ret = IB_MAD_RESULT_SUCCESS;
    goto bail;
   }

  default:
   smp->status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply(smp);
   goto bail;
  }

 case 136:
  if (smp->attr_id == IB_SMP_ATTR_NOTICE)
   ret = subn_trap_repress(smp, ibdev, port);
  else {
   smp->status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply(smp);
  }
  goto bail;

 case 137:
 case 141:
 case 140:
 case 142:





  ret = IB_MAD_RESULT_SUCCESS;
  goto bail;

 case 139:
  if (ib_get_smp_direction(smp) &&
      smp->attr_id == QIB_VENDOR_IPG) {
   ppd->dd->f_set_ib_cfg(ppd, QIB_IB_CFG_PORT,
           smp->data[0]);
   ret = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
  } else
   ret = IB_MAD_RESULT_SUCCESS;
  goto bail;

 default:
  smp->status |= IB_SMP_UNSUP_METHOD;
  ret = reply(smp);
 }

bail:
 return ret;
}
