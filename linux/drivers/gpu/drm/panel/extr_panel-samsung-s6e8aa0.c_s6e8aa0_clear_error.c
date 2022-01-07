
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e8aa0 {int error; } ;



__attribute__((used)) static int s6e8aa0_clear_error(struct s6e8aa0 *ctx)
{
 int ret = ctx->error;

 ctx->error = 0;
 return ret;
}
