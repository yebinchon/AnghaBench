
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_ibport {int dummy; } ;
struct ib_smp {int dummy; } ;
struct ib_mad {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cc_mad {int class_version; int method; int status; int attr_id; } ;






 int IB_MAD_RESULT_SUCCESS ;




 int IB_SMP_UNSUP_METHOD ;
 int IB_SMP_UNSUP_METH_ATTR ;
 int IB_SMP_UNSUP_VERSION ;
 int cc_get_classportinfo (struct ib_cc_mad*,struct ib_device*) ;
 int cc_get_congestion_control_table (struct ib_cc_mad*,struct ib_device*,int ) ;
 int cc_get_congestion_info (struct ib_cc_mad*,struct ib_device*,int ) ;
 int cc_get_congestion_setting (struct ib_cc_mad*,struct ib_device*,int ) ;
 int cc_set_congestion_control_table (struct ib_cc_mad*,struct ib_device*,int ) ;
 int cc_set_congestion_setting (struct ib_cc_mad*,struct ib_device*,int ) ;
 int check_cc_key (struct qib_ibport*,struct ib_cc_mad*,int) ;
 int reply (struct ib_smp*) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int process_cc(struct ib_device *ibdev, int mad_flags,
   u8 port, const struct ib_mad *in_mad,
   struct ib_mad *out_mad)
{
 struct ib_cc_mad *ccp = (struct ib_cc_mad *)out_mad;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 int ret;

 *out_mad = *in_mad;

 if (ccp->class_version != 2) {
  ccp->status |= IB_SMP_UNSUP_VERSION;
  ret = reply((struct ib_smp *)ccp);
  goto bail;
 }

 ret = check_cc_key(ibp, ccp, mad_flags);
 if (ret)
  goto bail;

 switch (ccp->method) {
 case 131:
  switch (ccp->attr_id) {
  case 134:
   ret = cc_get_classportinfo(ccp, ibdev);
   goto bail;

  case 132:
   ret = cc_get_congestion_info(ccp, ibdev, port);
   goto bail;

  case 135:
   ret = cc_get_congestion_setting(ccp, ibdev, port);
   goto bail;

  case 133:
   ret = cc_get_congestion_control_table(ccp, ibdev, port);
   goto bail;


  default:
   ccp->status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply((struct ib_smp *) ccp);
   goto bail;
  }

 case 129:
  switch (ccp->attr_id) {
  case 135:
   ret = cc_set_congestion_setting(ccp, ibdev, port);
   goto bail;

  case 133:
   ret = cc_set_congestion_control_table(ccp, ibdev, port);
   goto bail;


  default:
   ccp->status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply((struct ib_smp *) ccp);
   goto bail;
  }

 case 130:





  ret = IB_MAD_RESULT_SUCCESS;
  goto bail;

 case 128:
 default:
  ccp->status |= IB_SMP_UNSUP_METHOD;
  ret = reply((struct ib_smp *) ccp);
 }

bail:
 return ret;
}
