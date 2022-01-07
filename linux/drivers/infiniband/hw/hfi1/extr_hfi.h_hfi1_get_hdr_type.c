
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rdma_ah_attr {int dummy; } ;
struct TYPE_2__ {int dgid; } ;


 int HFI1_PKT_TYPE_16B ;
 int HFI1_PKT_TYPE_9B ;
 int OPA_LID_PERMISSIVE ;
 scalar_t__ be32_to_cpu (int ) ;
 int hfi1_get_packet_type (scalar_t__) ;
 scalar_t__ ib_is_opa_gid (int *) ;
 scalar_t__ rdma_ah_get_dlid (struct rdma_ah_attr*) ;
 TYPE_1__* rdma_ah_read_grh (struct rdma_ah_attr*) ;

__attribute__((used)) static inline bool hfi1_get_hdr_type(u32 lid, struct rdma_ah_attr *attr)
{







 if (rdma_ah_get_dlid(attr) == be32_to_cpu(OPA_LID_PERMISSIVE))
  return (ib_is_opa_gid(&rdma_ah_read_grh(attr)->dgid)) ?
   HFI1_PKT_TYPE_16B : HFI1_PKT_TYPE_9B;





 if (hfi1_get_packet_type(rdma_ah_get_dlid(attr)) == HFI1_PKT_TYPE_16B)
  return HFI1_PKT_TYPE_16B;

 return hfi1_get_packet_type(lid);
}
