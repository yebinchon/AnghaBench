
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdma_ah_attr {int type; } ;
struct ocrdma_grh {int * dgid; int tclass_flow; int pdid_hoplimit; } ;
struct ocrdma_eth_vlan {int dummy; } ;
struct ocrdma_eth_basic {int dummy; } ;
struct TYPE_2__ {int vlan_tag; } ;
struct ocrdma_av {int valid; TYPE_1__ eth_hdr; } ;
struct ocrdma_ah {int sgid_index; struct ocrdma_av* av; } ;
struct ib_ah {int type; } ;


 int OCRDMA_AV_VALID ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct ocrdma_ah* get_ocrdma_ah (struct ib_ah*) ;
 int rdma_ah_set_dgid_raw (struct rdma_ah_attr*,int *) ;
 int rdma_ah_set_grh (struct rdma_ah_attr*,int *,int,int ,int,int) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int) ;

int ocrdma_query_ah(struct ib_ah *ibah, struct rdma_ah_attr *attr)
{
 struct ocrdma_ah *ah = get_ocrdma_ah(ibah);
 struct ocrdma_av *av = ah->av;
 struct ocrdma_grh *grh;

 attr->type = ibah->type;
 if (ah->av->valid & OCRDMA_AV_VALID) {
  grh = (struct ocrdma_grh *)((u8 *)ah->av +
    sizeof(struct ocrdma_eth_vlan));
  rdma_ah_set_sl(attr, be16_to_cpu(av->eth_hdr.vlan_tag) >> 13);
 } else {
  grh = (struct ocrdma_grh *)((u8 *)ah->av +
     sizeof(struct ocrdma_eth_basic));
  rdma_ah_set_sl(attr, 0);
 }
 rdma_ah_set_grh(attr, ((void*)0),
   be32_to_cpu(grh->tclass_flow) & 0xffffffff,
   ah->sgid_index,
   be32_to_cpu(grh->pdid_hoplimit) & 0xff,
   be32_to_cpu(grh->tclass_flow) >> 24);
 rdma_ah_set_dgid_raw(attr, &grh->dgid[0]);
 return 0;
}
