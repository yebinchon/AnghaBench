
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tc358764 {int dev; TYPE_1__* supplies; } ;
struct TYPE_3__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_err (int ,char*,int) ;
 int devm_regulator_bulk_get (int ,int,TYPE_1__*) ;
 int * tc358764_supplies ;

__attribute__((used)) static int tc358764_configure_regulators(struct tc358764 *ctx)
{
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(ctx->supplies); ++i)
  ctx->supplies[i].supply = tc358764_supplies[i];

 ret = devm_regulator_bulk_get(ctx->dev, ARRAY_SIZE(ctx->supplies),
          ctx->supplies);
 if (ret < 0)
  dev_err(ctx->dev, "failed to get regulators: %d\n", ret);

 return ret;
}
