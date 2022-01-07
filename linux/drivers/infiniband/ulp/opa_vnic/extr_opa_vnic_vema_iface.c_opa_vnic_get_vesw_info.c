
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __opa_vesw_info {int rsvd4; int eth_mtu; int rsvd3; int rc; int * u_ucast_dlid; int u_mcast_dlid; int rsvd2; int pkey; int rsvd1; int def_port_mask; int rsvd0; int vesw_id; int fabric_id; } ;
struct TYPE_2__ {struct __opa_vesw_info vesw; } ;
struct opa_vnic_adapter {TYPE_1__ info; } ;
struct opa_vesw_info {int rsvd4; void* eth_mtu; int rsvd3; void* rc; void** u_ucast_dlid; void* u_mcast_dlid; int rsvd2; void* pkey; int rsvd1; void* def_port_mask; int rsvd0; void* vesw_id; void* fabric_id; } ;


 int ARRAY_SIZE (int ) ;
 int OPA_VESW_MAX_NUM_DEF_PORT ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int memcpy (int ,int ,int ) ;

void opa_vnic_get_vesw_info(struct opa_vnic_adapter *adapter,
       struct opa_vesw_info *info)
{
 struct __opa_vesw_info *src = &adapter->info.vesw;
 int i;

 info->fabric_id = cpu_to_be16(src->fabric_id);
 info->vesw_id = cpu_to_be16(src->vesw_id);
 memcpy(info->rsvd0, src->rsvd0, ARRAY_SIZE(src->rsvd0));
 info->def_port_mask = cpu_to_be16(src->def_port_mask);
 memcpy(info->rsvd1, src->rsvd1, ARRAY_SIZE(src->rsvd1));
 info->pkey = cpu_to_be16(src->pkey);

 memcpy(info->rsvd2, src->rsvd2, ARRAY_SIZE(src->rsvd2));
 info->u_mcast_dlid = cpu_to_be32(src->u_mcast_dlid);
 for (i = 0; i < OPA_VESW_MAX_NUM_DEF_PORT; i++)
  info->u_ucast_dlid[i] = cpu_to_be32(src->u_ucast_dlid[i]);

 info->rc = cpu_to_be32(src->rc);

 memcpy(info->rsvd3, src->rsvd3, ARRAY_SIZE(src->rsvd3));
 info->eth_mtu = cpu_to_be16(src->eth_mtu);
 memcpy(info->rsvd4, src->rsvd4, ARRAY_SIZE(src->rsvd4));
}
