
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int error; } ;



__attribute__((used)) static int sii8620_clear_error(struct sii8620 *ctx)
{
 int ret = ctx->error;

 ctx->error = 0;
 return ret;
}
