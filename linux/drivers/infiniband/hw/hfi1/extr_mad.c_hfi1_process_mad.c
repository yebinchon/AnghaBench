
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct opa_mad {int dummy; } ;
struct ib_wc {int dummy; } ;
struct ib_mad_hdr {int base_version; } ;
struct ib_mad {int dummy; } ;
struct ib_grh {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct ib_device {TYPE_1__ dev; } ;


 int IB_MAD_RESULT_FAILURE ;


 int dev_err (int ,char*) ;
 int hfi1_process_ib_mad (struct ib_device*,int,int ,struct ib_wc const*,struct ib_grh const*,struct ib_mad const*,struct ib_mad*) ;
 int hfi1_process_opa_mad (struct ib_device*,int,int ,struct ib_wc const*,struct ib_grh const*,struct opa_mad*,struct opa_mad*,size_t*,int *) ;
 int unlikely (int) ;

int hfi1_process_mad(struct ib_device *ibdev, int mad_flags, u8 port,
       const struct ib_wc *in_wc, const struct ib_grh *in_grh,
       const struct ib_mad_hdr *in_mad, size_t in_mad_size,
       struct ib_mad_hdr *out_mad, size_t *out_mad_size,
       u16 *out_mad_pkey_index)
{
 switch (in_mad->base_version) {
 case 128:
  if (unlikely(in_mad_size != sizeof(struct opa_mad))) {
   dev_err(ibdev->dev.parent, "invalid in_mad_size\n");
   return IB_MAD_RESULT_FAILURE;
  }
  return hfi1_process_opa_mad(ibdev, mad_flags, port,
         in_wc, in_grh,
         (struct opa_mad *)in_mad,
         (struct opa_mad *)out_mad,
         out_mad_size,
         out_mad_pkey_index);
 case 129:
  return hfi1_process_ib_mad(ibdev, mad_flags, port,
       in_wc, in_grh,
       (const struct ib_mad *)in_mad,
       (struct ib_mad *)out_mad);
 default:
  break;
 }

 return IB_MAD_RESULT_FAILURE;
}
