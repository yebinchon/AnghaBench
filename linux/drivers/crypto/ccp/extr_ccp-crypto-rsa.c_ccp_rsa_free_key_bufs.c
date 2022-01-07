
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ d_len; int * d_buf; scalar_t__ n_len; int * n_buf; scalar_t__ e_len; int * e_buf; } ;
struct TYPE_3__ {TYPE_2__ rsa; } ;
struct ccp_ctx {TYPE_1__ u; } ;


 int kzfree (int *) ;

__attribute__((used)) static void ccp_rsa_free_key_bufs(struct ccp_ctx *ctx)
{

 kzfree(ctx->u.rsa.e_buf);
 ctx->u.rsa.e_buf = ((void*)0);
 ctx->u.rsa.e_len = 0;
 kzfree(ctx->u.rsa.n_buf);
 ctx->u.rsa.n_buf = ((void*)0);
 ctx->u.rsa.n_len = 0;
 kzfree(ctx->u.rsa.d_buf);
 ctx->u.rsa.d_buf = ((void*)0);
 ctx->u.rsa.d_len = 0;
}
