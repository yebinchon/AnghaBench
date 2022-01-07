
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ class_version; int method; int status; int attr_id; } ;
struct opa_pma_mad {TYPE_1__ mad_hdr; } ;
struct opa_mad {int dummy; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_MAD_RESULT_SUCCESS ;





 int IB_SMP_UNSUP_METHOD ;
 int IB_SMP_UNSUP_METH_ATTR ;
 int IB_SMP_UNSUP_VERSION ;





 scalar_t__ OPA_SM_CLASS_VERSION ;
 int pma_get_opa_classportinfo (struct opa_pma_mad*,struct ib_device*,int*) ;
 int pma_get_opa_datacounters (struct opa_pma_mad*,struct ib_device*,int ,int*) ;
 int pma_get_opa_errorinfo (struct opa_pma_mad*,struct ib_device*,int ,int*) ;
 int pma_get_opa_porterrors (struct opa_pma_mad*,struct ib_device*,int ,int*) ;
 int pma_get_opa_portstatus (struct opa_pma_mad*,struct ib_device*,int ,int*) ;
 int pma_set_opa_errorinfo (struct opa_pma_mad*,struct ib_device*,int ,int*) ;
 int pma_set_opa_portstatus (struct opa_pma_mad*,struct ib_device*,int ,int*) ;
 int reply (struct ib_mad_hdr*) ;

__attribute__((used)) static int process_perf_opa(struct ib_device *ibdev, u8 port,
       const struct opa_mad *in_mad,
       struct opa_mad *out_mad, u32 *resp_len)
{
 struct opa_pma_mad *pmp = (struct opa_pma_mad *)out_mad;
 int ret;

 *out_mad = *in_mad;

 if (pmp->mad_hdr.class_version != OPA_SM_CLASS_VERSION) {
  pmp->mad_hdr.status |= IB_SMP_UNSUP_VERSION;
  return reply((struct ib_mad_hdr *)pmp);
 }

 *resp_len = sizeof(pmp->mad_hdr);

 switch (pmp->mad_hdr.method) {
 case 137:
  switch (pmp->mad_hdr.attr_id) {
  case 133:
   ret = pma_get_opa_classportinfo(pmp, ibdev, resp_len);
   break;
  case 128:
   ret = pma_get_opa_portstatus(pmp, ibdev, port,
           resp_len);
   break;
  case 131:
   ret = pma_get_opa_datacounters(pmp, ibdev, port,
             resp_len);
   break;
  case 129:
   ret = pma_get_opa_porterrors(pmp, ibdev, port,
           resp_len);
   break;
  case 130:
   ret = pma_get_opa_errorinfo(pmp, ibdev, port,
          resp_len);
   break;
  default:
   pmp->mad_hdr.status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply((struct ib_mad_hdr *)pmp);
   break;
  }
  break;

 case 135:
  switch (pmp->mad_hdr.attr_id) {
  case 132:
   ret = pma_set_opa_portstatus(pmp, ibdev, port,
           resp_len);
   break;
  case 130:
   ret = pma_set_opa_errorinfo(pmp, ibdev, port,
          resp_len);
   break;
  default:
   pmp->mad_hdr.status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply((struct ib_mad_hdr *)pmp);
   break;
  }
  break;

 case 134:
 case 136:





  ret = IB_MAD_RESULT_SUCCESS;
  break;

 default:
  pmp->mad_hdr.status |= IB_SMP_UNSUP_METHOD;
  ret = reply((struct ib_mad_hdr *)pmp);
  break;
 }

 return ret;
}
