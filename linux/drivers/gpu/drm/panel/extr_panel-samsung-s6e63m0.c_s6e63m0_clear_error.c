
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63m0 {int error; } ;



__attribute__((used)) static int s6e63m0_clear_error(struct s6e63m0 *ctx)
{
 int ret = ctx->error;

 ctx->error = 0;
 return ret;
}
