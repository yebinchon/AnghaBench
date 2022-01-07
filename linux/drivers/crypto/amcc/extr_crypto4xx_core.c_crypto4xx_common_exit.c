
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto4xx_ctx {int dummy; } ;


 int crypto4xx_free_sa (struct crypto4xx_ctx*) ;

__attribute__((used)) static void crypto4xx_common_exit(struct crypto4xx_ctx *ctx)
{
 crypto4xx_free_sa(ctx);
}
