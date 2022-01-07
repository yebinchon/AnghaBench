
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct opa_16b_mgmt {int src_qpn; } ;


 int OPA_16B_MGMT_QPN_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 hfi1_16B_get_src_qpn(struct opa_16b_mgmt *mgmt)
{
 return be32_to_cpu(mgmt->src_qpn) & OPA_16B_MGMT_QPN_MASK;
}
