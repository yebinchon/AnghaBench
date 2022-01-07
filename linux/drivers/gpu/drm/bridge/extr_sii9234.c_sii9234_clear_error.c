
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int i2c_error; } ;



__attribute__((used)) static int sii9234_clear_error(struct sii9234 *ctx)
{
 int ret = ctx->i2c_error;

 ctx->i2c_error = 0;

 return ret;
}
