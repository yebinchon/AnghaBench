
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int class_version; int method; int status; int attr_id; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; int data; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_mad {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_class_port_info {int capability_mask; } ;


 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_SUCCESS ;




 int IB_PMA_CLASS_CAP_EXT_WIDTH ;



 int IB_SMP_UNSUP_METHOD ;
 int IB_SMP_UNSUP_METH_ATTR ;
 int IB_SMP_UNSUP_VERSION ;
 int pma_get_ib_portcounters (struct ib_pma_mad*,struct ib_device*,int ) ;
 int pma_get_ib_portcounters_ext (struct ib_pma_mad*,struct ib_device*,int ) ;
 int reply (struct ib_mad_hdr*) ;

__attribute__((used)) static int process_perf(struct ib_device *ibdev, u8 port,
   const struct ib_mad *in_mad,
   struct ib_mad *out_mad)
{
 struct ib_pma_mad *pmp = (struct ib_pma_mad *)out_mad;
 struct ib_class_port_info *cpi = (struct ib_class_port_info *)
      &pmp->data;
 int ret = IB_MAD_RESULT_FAILURE;

 *out_mad = *in_mad;
 if (pmp->mad_hdr.class_version != 1) {
  pmp->mad_hdr.status |= IB_SMP_UNSUP_VERSION;
  ret = reply((struct ib_mad_hdr *)pmp);
  return ret;
 }

 switch (pmp->mad_hdr.method) {
 case 134:
  switch (pmp->mad_hdr.attr_id) {
  case 129:
   ret = pma_get_ib_portcounters(pmp, ibdev, port);
   break;
  case 128:
   ret = pma_get_ib_portcounters_ext(pmp, ibdev, port);
   break;
  case 130:
   cpi->capability_mask = IB_PMA_CLASS_CAP_EXT_WIDTH;
   ret = reply((struct ib_mad_hdr *)pmp);
   break;
  default:
   pmp->mad_hdr.status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply((struct ib_mad_hdr *)pmp);
   break;
  }
  break;

 case 132:
  if (pmp->mad_hdr.attr_id) {
   pmp->mad_hdr.status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply((struct ib_mad_hdr *)pmp);
  }
  break;

 case 131:
 case 133:





  ret = IB_MAD_RESULT_SUCCESS;
  break;

 default:
  pmp->mad_hdr.status |= IB_SMP_UNSUP_METHOD;
  ret = reply((struct ib_mad_hdr *)pmp);
  break;
 }

 return ret;
}
