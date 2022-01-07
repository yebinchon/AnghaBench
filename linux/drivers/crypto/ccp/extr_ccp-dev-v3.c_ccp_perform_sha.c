
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int type; int msg_bits; } ;
struct TYPE_10__ {TYPE_3__ sha; } ;
struct TYPE_11__ {int length; } ;
struct TYPE_7__ {TYPE_5__ dma; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct ccp_op {int sb_ctx; TYPE_4__ u; scalar_t__ eom; TYPE_2__ src; } ;


 int ARRAY_SIZE (int*) ;
 int CCP_ENGINE_SHA ;
 int CCP_MEMTYPE_SYSTEM ;
 int REQ1_ENGINE_SHIFT ;
 int REQ1_EOM ;
 int REQ1_INIT ;
 int REQ1_SHA_TYPE_SHIFT ;
 int REQ4_KSB_SHIFT ;
 int REQ4_MEMTYPE_SHIFT ;
 int ccp_addr_hi (TYPE_5__*) ;
 int ccp_addr_lo (TYPE_5__*) ;
 int ccp_do_cmd (struct ccp_op*,int*,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int ccp_perform_sha(struct ccp_op *op)
{
 u32 cr[6];


 cr[0] = (CCP_ENGINE_SHA << REQ1_ENGINE_SHIFT)
  | (op->u.sha.type << REQ1_SHA_TYPE_SHIFT)
  | REQ1_INIT;
 cr[1] = op->src.u.dma.length - 1;
 cr[2] = ccp_addr_lo(&op->src.u.dma);
 cr[3] = (op->sb_ctx << REQ4_KSB_SHIFT)
  | (CCP_MEMTYPE_SYSTEM << REQ4_MEMTYPE_SHIFT)
  | ccp_addr_hi(&op->src.u.dma);

 if (op->eom) {
  cr[0] |= REQ1_EOM;
  cr[4] = lower_32_bits(op->u.sha.msg_bits);
  cr[5] = upper_32_bits(op->u.sha.msg_bits);
 } else {
  cr[4] = 0;
  cr[5] = 0;
 }

 return ccp_do_cmd(op, cr, ARRAY_SIZE(cr));
}
