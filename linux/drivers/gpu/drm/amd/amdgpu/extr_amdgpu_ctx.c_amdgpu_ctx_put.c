
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ctx {int refcount; } ;


 int EINVAL ;
 int amdgpu_ctx_do_release ;
 int kref_put (int *,int ) ;

int amdgpu_ctx_put(struct amdgpu_ctx *ctx)
{
 if (ctx == ((void*)0))
  return -EINVAL;

 kref_put(&ctx->refcount, amdgpu_ctx_do_release);
 return 0;
}
