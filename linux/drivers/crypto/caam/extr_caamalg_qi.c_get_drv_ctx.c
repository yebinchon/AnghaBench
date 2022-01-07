
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct caam_drv_ctx {int op_type; } ;
struct caam_ctx {int lock; struct caam_drv_ctx** drv_ctx; int qidev; int * sh_desc_dec; int * sh_desc_enc; } ;
typedef enum optype { ____Placeholder_optype } optype ;


 int ENCRYPT ;
 int IS_ERR_OR_NULL (struct caam_drv_ctx*) ;
 struct caam_drv_ctx* caam_drv_ctx_init (int ,int*,int *) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct caam_drv_ctx *get_drv_ctx(struct caam_ctx *ctx,
     enum optype type)
{





 struct caam_drv_ctx *drv_ctx = ctx->drv_ctx[type];
 u32 *desc;

 if (unlikely(!drv_ctx)) {
  spin_lock(&ctx->lock);


  drv_ctx = ctx->drv_ctx[type];
  if (!drv_ctx) {
   int cpu;

   if (type == ENCRYPT)
    desc = ctx->sh_desc_enc;
   else
    desc = ctx->sh_desc_dec;

   cpu = smp_processor_id();
   drv_ctx = caam_drv_ctx_init(ctx->qidev, &cpu, desc);
   if (!IS_ERR_OR_NULL(drv_ctx))
    drv_ctx->op_type = type;

   ctx->drv_ctx[type] = drv_ctx;
  }

  spin_unlock(&ctx->lock);
 }

 return drv_ctx;
}
