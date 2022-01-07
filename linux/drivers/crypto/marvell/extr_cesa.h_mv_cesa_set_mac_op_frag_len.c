
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_digest; } ;
struct mv_cesa_op_ctx {TYPE_1__ desc; } ;


 int CESA_SA_DESC_MAC_FRAG_LEN (int) ;
 int CESA_SA_DESC_MAC_FRAG_LEN_MSK ;

__attribute__((used)) static inline void mv_cesa_set_mac_op_frag_len(struct mv_cesa_op_ctx *op,
            int len)
{
 op->desc.mac_digest &= ~CESA_SA_DESC_MAC_FRAG_LEN_MSK;
 op->desc.mac_digest |= CESA_SA_DESC_MAC_FRAG_LEN(len);
}
