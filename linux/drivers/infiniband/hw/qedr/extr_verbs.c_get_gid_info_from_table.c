
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_7__ {void** dwords; void* ipv4_addr; int * bytes; } ;
struct qed_rdma_modify_qp_in_params {int vlan_id; TYPE_3__ dgid; TYPE_3__ sgid; int roce_mode; int modify_flags; } ;
struct ib_qp_attr {int ah_attr; } ;
struct ib_qp {int dummy; } ;
struct TYPE_6__ {struct TYPE_6__* raw; } ;
struct ib_global_route {TYPE_2__ dgid; struct ib_gid_attr* sgid_attr; } ;
struct TYPE_5__ {TYPE_2__* raw; } ;
struct ib_gid_attr {TYPE_1__ gid; } ;
typedef enum rdma_network_type { ____Placeholder_rdma_network_type } rdma_network_type ;


 int QED_ROCE_MODIFY_QP_VALID_ROCE_MODE ;



 int ROCE_V1 ;
 int ROCE_V2_IPV4 ;
 int ROCE_V2_IPV6 ;
 int SET_FIELD (int ,int ,int) ;
 int VLAN_CFI_MASK ;
 int memcpy (int *,TYPE_2__*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 void* ntohl (void*) ;
 void* qedr_get_ipv4_from_gid (TYPE_2__*) ;
 struct ib_global_route* rdma_ah_read_grh (int *) ;
 int rdma_gid_attr_network_type (struct ib_gid_attr const*) ;
 int rdma_read_gid_l2_fields (struct ib_gid_attr const*,int *,int *) ;

__attribute__((used)) static inline int get_gid_info_from_table(struct ib_qp *ibqp,
       struct ib_qp_attr *attr,
       int attr_mask,
       struct qed_rdma_modify_qp_in_params
       *qp_params)
{
 const struct ib_gid_attr *gid_attr;
 enum rdma_network_type nw_type;
 const struct ib_global_route *grh = rdma_ah_read_grh(&attr->ah_attr);
 u32 ipv4_addr;
 int ret;
 int i;

 gid_attr = grh->sgid_attr;
 ret = rdma_read_gid_l2_fields(gid_attr, &qp_params->vlan_id, ((void*)0));
 if (ret)
  return ret;

 nw_type = rdma_gid_attr_network_type(gid_attr);
 switch (nw_type) {
 case 128:
  memcpy(&qp_params->sgid.bytes[0], &gid_attr->gid.raw[0],
         sizeof(qp_params->sgid));
  memcpy(&qp_params->dgid.bytes[0],
         &grh->dgid,
         sizeof(qp_params->dgid));
  qp_params->roce_mode = ROCE_V2_IPV6;
  SET_FIELD(qp_params->modify_flags,
     QED_ROCE_MODIFY_QP_VALID_ROCE_MODE, 1);
  break;
 case 130:
  memcpy(&qp_params->sgid.bytes[0], &gid_attr->gid.raw[0],
         sizeof(qp_params->sgid));
  memcpy(&qp_params->dgid.bytes[0],
         &grh->dgid,
         sizeof(qp_params->dgid));
  qp_params->roce_mode = ROCE_V1;
  break;
 case 129:
  memset(&qp_params->sgid, 0, sizeof(qp_params->sgid));
  memset(&qp_params->dgid, 0, sizeof(qp_params->dgid));
  ipv4_addr = qedr_get_ipv4_from_gid(gid_attr->gid.raw);
  qp_params->sgid.ipv4_addr = ipv4_addr;
  ipv4_addr =
      qedr_get_ipv4_from_gid(grh->dgid.raw);
  qp_params->dgid.ipv4_addr = ipv4_addr;
  SET_FIELD(qp_params->modify_flags,
     QED_ROCE_MODIFY_QP_VALID_ROCE_MODE, 1);
  qp_params->roce_mode = ROCE_V2_IPV4;
  break;
 }

 for (i = 0; i < 4; i++) {
  qp_params->sgid.dwords[i] = ntohl(qp_params->sgid.dwords[i]);
  qp_params->dgid.dwords[i] = ntohl(qp_params->dgid.dwords[i]);
 }

 if (qp_params->vlan_id >= VLAN_CFI_MASK)
  qp_params->vlan_id = 0;

 return 0;
}
