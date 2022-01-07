
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_uverbs_query_port_resp {int link_layer; int phys_state; int active_speed; int active_width; int init_type_reply; int subnet_timeout; int sm_sl; int max_vl_num; int lmc; void* sm_lid; void* lid; int flags; int pkey_tbl_len; int qkey_viol_cntr; int bad_pkey_cntr; int max_msg_sz; int port_cap_flags; int gid_tbl_len; int active_mtu; int max_mtu; int state; } ;
struct ib_port_attr {int phys_state; int active_speed; int active_width; int init_type_reply; int subnet_timeout; int sm_sl; int max_vl_num; int lmc; int sm_lid; int lid; int pkey_tbl_len; int qkey_viol_cntr; int bad_pkey_cntr; int max_msg_sz; int gid_tbl_len; int active_mtu; int max_mtu; int state; } ;
struct ib_device {int dummy; } ;


 int IB_UVERBS_QPF_GRH_REQUIRED ;
 void* OPA_TO_IB_UCAST_LID (int ) ;
 void* ib_lid_cpu16 (int ) ;
 int make_port_cap_flags (struct ib_port_attr*) ;
 scalar_t__ rdma_cap_opa_ah (struct ib_device*,int ) ;
 scalar_t__ rdma_is_grh_required (struct ib_device*,int ) ;
 int rdma_port_get_link_layer (struct ib_device*,int ) ;

void copy_port_attr_to_resp(struct ib_port_attr *attr,
       struct ib_uverbs_query_port_resp *resp,
       struct ib_device *ib_dev, u8 port_num)
{
 resp->state = attr->state;
 resp->max_mtu = attr->max_mtu;
 resp->active_mtu = attr->active_mtu;
 resp->gid_tbl_len = attr->gid_tbl_len;
 resp->port_cap_flags = make_port_cap_flags(attr);
 resp->max_msg_sz = attr->max_msg_sz;
 resp->bad_pkey_cntr = attr->bad_pkey_cntr;
 resp->qkey_viol_cntr = attr->qkey_viol_cntr;
 resp->pkey_tbl_len = attr->pkey_tbl_len;

 if (rdma_is_grh_required(ib_dev, port_num))
  resp->flags |= IB_UVERBS_QPF_GRH_REQUIRED;

 if (rdma_cap_opa_ah(ib_dev, port_num)) {
  resp->lid = OPA_TO_IB_UCAST_LID(attr->lid);
  resp->sm_lid = OPA_TO_IB_UCAST_LID(attr->sm_lid);
 } else {
  resp->lid = ib_lid_cpu16(attr->lid);
  resp->sm_lid = ib_lid_cpu16(attr->sm_lid);
 }

 resp->lmc = attr->lmc;
 resp->max_vl_num = attr->max_vl_num;
 resp->sm_sl = attr->sm_sl;
 resp->subnet_timeout = attr->subnet_timeout;
 resp->init_type_reply = attr->init_type_reply;
 resp->active_width = attr->active_width;
 resp->active_speed = attr->active_speed;
 resp->phys_state = attr->phys_state;
 resp->link_layer = rdma_port_get_link_layer(ib_dev, port_num);
}
