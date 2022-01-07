
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __opa_vesw_info {int rsvd4; void* eth_mtu; int rsvd3; void* rc; void** u_ucast_dlid; void* u_mcast_dlid; int rsvd2; void* pkey; int rsvd1; void* def_port_mask; int rsvd0; void* vesw_id; void* fabric_id; } ;
struct TYPE_2__ {struct __opa_vesw_info vesw; } ;
struct opa_vnic_adapter {TYPE_1__ info; } ;
struct opa_vesw_info {int rsvd4; int eth_mtu; int rsvd3; int rc; int * u_ucast_dlid; int u_mcast_dlid; int rsvd2; int pkey; int rsvd1; int def_port_mask; int rsvd0; int vesw_id; int fabric_id; } ;


 int ARRAY_SIZE (int ) ;
 int OPA_VESW_MAX_NUM_DEF_PORT ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;

void opa_vnic_set_vesw_info(struct opa_vnic_adapter *adapter,
       struct opa_vesw_info *info)
{
 struct __opa_vesw_info *dst = &adapter->info.vesw;
 int i;

 dst->fabric_id = be16_to_cpu(info->fabric_id);
 dst->vesw_id = be16_to_cpu(info->vesw_id);
 memcpy(dst->rsvd0, info->rsvd0, ARRAY_SIZE(info->rsvd0));
 dst->def_port_mask = be16_to_cpu(info->def_port_mask);
 memcpy(dst->rsvd1, info->rsvd1, ARRAY_SIZE(info->rsvd1));
 dst->pkey = be16_to_cpu(info->pkey);

 memcpy(dst->rsvd2, info->rsvd2, ARRAY_SIZE(info->rsvd2));
 dst->u_mcast_dlid = be32_to_cpu(info->u_mcast_dlid);
 for (i = 0; i < OPA_VESW_MAX_NUM_DEF_PORT; i++)
  dst->u_ucast_dlid[i] = be32_to_cpu(info->u_ucast_dlid[i]);

 dst->rc = be32_to_cpu(info->rc);

 memcpy(dst->rsvd3, info->rsvd3, ARRAY_SIZE(info->rsvd3));
 dst->eth_mtu = be16_to_cpu(info->eth_mtu);
 memcpy(dst->rsvd4, info->rsvd4, ARRAY_SIZE(info->rsvd4));
}
