
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum rdma_network_type { ____Placeholder_rdma_network_type } rdma_network_type ;


 int CMDQ_CREATE_AH_TYPE_V1 ;
 int CMDQ_CREATE_AH_TYPE_V2IPV4 ;
 int CMDQ_CREATE_AH_TYPE_V2IPV6 ;



__attribute__((used)) static u8 bnxt_re_stack_to_dev_nw_type(enum rdma_network_type ntype)
{
 u8 nw_type;

 switch (ntype) {
 case 129:
  nw_type = CMDQ_CREATE_AH_TYPE_V2IPV4;
  break;
 case 128:
  nw_type = CMDQ_CREATE_AH_TYPE_V2IPV6;
  break;
 default:
  nw_type = CMDQ_CREATE_AH_TYPE_V1;
  break;
 }
 return nw_type;
}
