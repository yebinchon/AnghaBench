
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld9040 {int error; } ;



__attribute__((used)) static int ld9040_clear_error(struct ld9040 *ctx)
{
 int ret = ctx->error;

 ctx->error = 0;
 return ret;
}
