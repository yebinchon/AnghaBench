
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int flags; void* out; void* in; void* csbcpb; } ;
struct TYPE_5__ {unsigned int flags; void* out; void* in; void* csbcpb; } ;
struct nx_crypto_ctx {TYPE_4__* out_sg; TYPE_3__ op_aead; TYPE_4__* in_sg; TYPE_4__* csbcpb_aead; TYPE_1__ op; TYPE_4__* csbcpb; int kmem_len; int kmem; int lock; } ;
struct TYPE_6__ {int valid; } ;
struct TYPE_8__ {TYPE_2__ csb; } ;


 int NX_CSB_VALID_BIT ;
 void* __pa (TYPE_4__*) ;
 int memset (int ,int ,int ) ;
 int spin_lock_init (int *) ;

void nx_ctx_init(struct nx_crypto_ctx *nx_ctx, unsigned int function)
{
 spin_lock_init(&nx_ctx->lock);
 memset(nx_ctx->kmem, 0, nx_ctx->kmem_len);
 nx_ctx->csbcpb->csb.valid |= NX_CSB_VALID_BIT;

 nx_ctx->op.flags = function;
 nx_ctx->op.csbcpb = __pa(nx_ctx->csbcpb);
 nx_ctx->op.in = __pa(nx_ctx->in_sg);
 nx_ctx->op.out = __pa(nx_ctx->out_sg);

 if (nx_ctx->csbcpb_aead) {
  nx_ctx->csbcpb_aead->csb.valid |= NX_CSB_VALID_BIT;

  nx_ctx->op_aead.flags = function;
  nx_ctx->op_aead.csbcpb = __pa(nx_ctx->csbcpb_aead);
  nx_ctx->op_aead.in = __pa(nx_ctx->in_sg);
  nx_ctx->op_aead.out = __pa(nx_ctx->out_sg);
 }
}
