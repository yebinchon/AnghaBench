
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct opa_smp {int dummy; } ;
struct TYPE_4__ {int * grh; struct ib_mad* mad; } ;
struct TYPE_5__ {TYPE_1__ recv_buf; int * wc; } ;
struct TYPE_6__ {TYPE_2__ recv_wc; int wc; } ;
struct ib_mad_private {scalar_t__ mad; int grh; TYPE_3__ header; } ;
struct ib_mad_hdr {scalar_t__ method; scalar_t__ mgmt_class; scalar_t__ base_version; int status; } ;
struct ib_mad {int dummy; } ;


 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 int IB_MGMT_MAD_STATUS_UNSUPPORTED_METHOD_ATTRIB ;
 scalar_t__ IB_MGMT_METHOD_GET ;
 scalar_t__ IB_MGMT_METHOD_GET_RESP ;
 scalar_t__ IB_MGMT_METHOD_SET ;
 int IB_SMP_DIRECTION ;
 scalar_t__ OPA_MGMT_BASE_VERSION ;
 int cpu_to_be16 (int ) ;
 int mad_priv_size (struct ib_mad_private*) ;
 int memcpy (struct ib_mad_private*,struct ib_mad_private const*,int ) ;
 size_t opa_get_smp_header_size (struct opa_smp*) ;

__attribute__((used)) static bool generate_unmatched_resp(const struct ib_mad_private *recv,
        struct ib_mad_private *response,
        size_t *resp_len, bool opa)
{
 const struct ib_mad_hdr *recv_hdr = (const struct ib_mad_hdr *)recv->mad;
 struct ib_mad_hdr *resp_hdr = (struct ib_mad_hdr *)response->mad;

 if (recv_hdr->method == IB_MGMT_METHOD_GET ||
     recv_hdr->method == IB_MGMT_METHOD_SET) {
  memcpy(response, recv, mad_priv_size(response));
  response->header.recv_wc.wc = &response->header.wc;
  response->header.recv_wc.recv_buf.mad = (struct ib_mad *)response->mad;
  response->header.recv_wc.recv_buf.grh = &response->grh;
  resp_hdr->method = IB_MGMT_METHOD_GET_RESP;
  resp_hdr->status = cpu_to_be16(IB_MGMT_MAD_STATUS_UNSUPPORTED_METHOD_ATTRIB);
  if (recv_hdr->mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE)
   resp_hdr->status |= IB_SMP_DIRECTION;

  if (opa && recv_hdr->base_version == OPA_MGMT_BASE_VERSION) {
   if (recv_hdr->mgmt_class ==
       IB_MGMT_CLASS_SUBN_LID_ROUTED ||
       recv_hdr->mgmt_class ==
       IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE)
    *resp_len = opa_get_smp_header_size(
       (struct opa_smp *)recv->mad);
   else
    *resp_len = sizeof(struct ib_mad_hdr);
  }

  return 1;
 } else {
  return 0;
 }
}
