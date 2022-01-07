
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e8aa0 {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int s6e8aa0_power_off(struct s6e8aa0 *ctx)
{
 return regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
}
