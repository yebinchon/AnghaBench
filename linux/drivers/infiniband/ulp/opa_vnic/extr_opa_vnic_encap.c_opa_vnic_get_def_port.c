
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opa_vnic_adapter {int* flow_tbl; } ;


 int OPA_VNIC_FLOW_TBL_SIZE ;

__attribute__((used)) static inline u8 opa_vnic_get_def_port(struct opa_vnic_adapter *adapter,
           u8 entropy)
{
 u8 flow_id;


 flow_id = ((entropy & 0xf) + (entropy >> 4));
 return adapter->flow_tbl[flow_id & (OPA_VNIC_FLOW_TBL_SIZE - 1)];
}
