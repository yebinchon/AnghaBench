
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct opa_rmpp_mad {int dummy; } ;
struct mad_rmpp_recv {scalar_t__ base_version; int seg_num; TYPE_4__* cur_seg_buf; TYPE_3__* agent; } ;
struct TYPE_12__ {int paylen_newwin; } ;
struct TYPE_11__ {int mgmt_class; } ;
struct ib_rmpp_mad {TYPE_6__ rmpp_hdr; TYPE_5__ mad_hdr; } ;
struct TYPE_10__ {scalar_t__ mad; } ;
struct TYPE_9__ {TYPE_2__* qp_info; } ;
struct TYPE_8__ {TYPE_1__* port_priv; } ;
struct TYPE_7__ {int port_num; int device; } ;


 int IB_MGMT_RMPP_DATA ;
 scalar_t__ OPA_MGMT_BASE_VERSION ;
 int OPA_MGMT_RMPP_DATA ;
 int be32_to_cpu (int ) ;
 int ib_get_mad_data_offset (int ) ;
 int rdma_cap_opa_mad (int ,int ) ;

__attribute__((used)) static inline int get_mad_len(struct mad_rmpp_recv *rmpp_recv)
{
 struct ib_rmpp_mad *rmpp_mad;
 int hdr_size, data_size, pad;
 bool opa = rdma_cap_opa_mad(rmpp_recv->agent->qp_info->port_priv->device,
        rmpp_recv->agent->qp_info->port_priv->port_num);

 rmpp_mad = (struct ib_rmpp_mad *)rmpp_recv->cur_seg_buf->mad;

 hdr_size = ib_get_mad_data_offset(rmpp_mad->mad_hdr.mgmt_class);
 if (opa && rmpp_recv->base_version == OPA_MGMT_BASE_VERSION) {
  data_size = sizeof(struct opa_rmpp_mad) - hdr_size;
  pad = OPA_MGMT_RMPP_DATA - be32_to_cpu(rmpp_mad->rmpp_hdr.paylen_newwin);
  if (pad > OPA_MGMT_RMPP_DATA || pad < 0)
   pad = 0;
 } else {
  data_size = sizeof(struct ib_rmpp_mad) - hdr_size;
  pad = IB_MGMT_RMPP_DATA - be32_to_cpu(rmpp_mad->rmpp_hdr.paylen_newwin);
  if (pad > IB_MGMT_RMPP_DATA || pad < 0)
   pad = 0;
 }

 return hdr_size + rmpp_recv->seg_num * data_size - pad;
}
