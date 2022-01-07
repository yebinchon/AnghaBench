
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int interface_id; int subnet_prefix; } ;
struct TYPE_6__ {TYPE_2__ global; } ;
struct ib_grh {int dgid; TYPE_3__ sgid; int hop_limit; int next_hdr; int paylen; int version_tclass_flow; } ;
struct ib_global_route {int traffic_class; int flow_label; scalar_t__ sgid_index; int dgid; int hop_limit; } ;
struct TYPE_4__ {int gid_prefix; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;


 scalar_t__ HFI1_GUIDS_PER_PORT ;
 scalar_t__ HFI1_PORT_GUID_INDEX ;
 int IB_GRH_FLOW_SHIFT ;
 int IB_GRH_NEXT_HDR ;
 int IB_GRH_TCLASS_SHIFT ;
 int IB_GRH_VERSION ;
 int IB_GRH_VERSION_SHIFT ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 int get_sguid (struct hfi1_ibport*,scalar_t__) ;

u32 hfi1_make_grh(struct hfi1_ibport *ibp, struct ib_grh *hdr,
    const struct ib_global_route *grh, u32 hwords, u32 nwords)
{
 hdr->version_tclass_flow =
  cpu_to_be32((IB_GRH_VERSION << IB_GRH_VERSION_SHIFT) |
       (grh->traffic_class << IB_GRH_TCLASS_SHIFT) |
       (grh->flow_label << IB_GRH_FLOW_SHIFT));
 hdr->paylen = cpu_to_be16((hwords + nwords) << 2);

 hdr->next_hdr = IB_GRH_NEXT_HDR;
 hdr->hop_limit = grh->hop_limit;

 hdr->sgid.global.subnet_prefix = ibp->rvp.gid_prefix;
 hdr->sgid.global.interface_id =
  grh->sgid_index < HFI1_GUIDS_PER_PORT ?
  get_sguid(ibp, grh->sgid_index) :
  get_sguid(ibp, HFI1_PORT_GUID_INDEX);
 hdr->dgid = grh->dgid;


 return sizeof(struct ib_grh) / sizeof(u32);
}
