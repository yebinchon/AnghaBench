
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int dma; } ;
struct TYPE_12__ {TYPE_5__ u; } ;
struct TYPE_9__ {int dma; } ;
struct TYPE_10__ {TYPE_3__ u; } ;
struct TYPE_7__ {int mod_size; int input_len; } ;
struct TYPE_8__ {TYPE_1__ rsa; } ;
struct ccp_op {int sb_key; int sb_ctx; TYPE_6__ dst; TYPE_4__ src; TYPE_2__ u; } ;


 int ARRAY_SIZE (int*) ;
 int CCP_ENGINE_RSA ;
 int CCP_MEMTYPE_SYSTEM ;
 int REQ1_ENGINE_SHIFT ;
 int REQ1_EOM ;
 int REQ1_KEY_KSB_SHIFT ;
 int REQ1_RSA_MOD_SIZE_SHIFT ;
 int REQ4_KSB_SHIFT ;
 int REQ4_MEMTYPE_SHIFT ;
 int REQ6_MEMTYPE_SHIFT ;
 int ccp_addr_hi (int *) ;
 int ccp_addr_lo (int *) ;
 int ccp_do_cmd (struct ccp_op*,int*,int ) ;

__attribute__((used)) static int ccp_perform_rsa(struct ccp_op *op)
{
 u32 cr[6];


 cr[0] = (CCP_ENGINE_RSA << REQ1_ENGINE_SHIFT)
  | (op->u.rsa.mod_size << REQ1_RSA_MOD_SIZE_SHIFT)
  | (op->sb_key << REQ1_KEY_KSB_SHIFT)
  | REQ1_EOM;
 cr[1] = op->u.rsa.input_len - 1;
 cr[2] = ccp_addr_lo(&op->src.u.dma);
 cr[3] = (op->sb_ctx << REQ4_KSB_SHIFT)
  | (CCP_MEMTYPE_SYSTEM << REQ4_MEMTYPE_SHIFT)
  | ccp_addr_hi(&op->src.u.dma);
 cr[4] = ccp_addr_lo(&op->dst.u.dma);
 cr[5] = (CCP_MEMTYPE_SYSTEM << REQ6_MEMTYPE_SHIFT)
  | ccp_addr_hi(&op->dst.u.dma);

 return ccp_do_cmd(op, cr, ARRAY_SIZE(cr));
}
