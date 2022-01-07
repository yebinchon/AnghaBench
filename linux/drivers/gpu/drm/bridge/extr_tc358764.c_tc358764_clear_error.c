
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int error; } ;



__attribute__((used)) static int tc358764_clear_error(struct tc358764 *ctx)
{
 int ret = ctx->error;

 ctx->error = 0;
 return ret;
}
