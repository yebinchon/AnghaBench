
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uld_ctx {int dev; } ;


 int c4iw_dealloc (struct uld_ctx*) ;
 int c4iw_unregister_device (int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void c4iw_remove(struct uld_ctx *ctx)
{
 pr_debug("c4iw_dev %p\n", ctx->dev);
 c4iw_unregister_device(ctx->dev);
 c4iw_dealloc(ctx);
}
