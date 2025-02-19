
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {int dummy; } ;
struct ucma_context {int cm_id; struct ucma_file* file; } ;


 int EINVAL ;
 int ENOENT ;
 struct ucma_context* ERR_PTR (int ) ;
 int ctx_table ;
 struct ucma_context* xa_load (int *,int) ;

__attribute__((used)) static inline struct ucma_context *_ucma_find_context(int id,
            struct ucma_file *file)
{
 struct ucma_context *ctx;

 ctx = xa_load(&ctx_table, id);
 if (!ctx)
  ctx = ERR_PTR(-ENOENT);
 else if (ctx->file != file || !ctx->cm_id)
  ctx = ERR_PTR(-EINVAL);
 return ctx;
}
