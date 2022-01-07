
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int sii9234_hw_on(struct sii9234 *ctx)
{
 return regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
}
