
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct opa_16b_mgmt {void* src_qpn; void* dest_qpn; } ;


 int OPA_16B_MGMT_QPN_MASK ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static inline void hfi1_16B_set_qpn(struct opa_16b_mgmt *mgmt,
        u32 dest_qp, u32 src_qp)
{
 mgmt->dest_qpn = cpu_to_be32(dest_qp & OPA_16B_MGMT_QPN_MASK);
 mgmt->src_qpn = cpu_to_be32(src_qp & OPA_16B_MGMT_QPN_MASK);
}
