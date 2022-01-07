
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sun4i_ss_ctx {int ssclk; int busclk; scalar_t__ reset; scalar_t__ base; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int rng; int hash; int crypto; } ;
struct TYPE_5__ {int type; TYPE_1__ alg; } ;


 int ARRAY_SIZE (TYPE_2__*) ;



 scalar_t__ SS_CTL ;
 int clk_disable_unprepare (int ) ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_rng (int *) ;
 int crypto_unregister_skcipher (int *) ;
 struct sun4i_ss_ctx* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (scalar_t__) ;
 TYPE_2__* ss_algs ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun4i_ss_remove(struct platform_device *pdev)
{
 int i;
 struct sun4i_ss_ctx *ss = platform_get_drvdata(pdev);

 for (i = 0; i < ARRAY_SIZE(ss_algs); i++) {
  switch (ss_algs[i].type) {
  case 128:
   crypto_unregister_skcipher(&ss_algs[i].alg.crypto);
   break;
  case 130:
   crypto_unregister_ahash(&ss_algs[i].alg.hash);
   break;
  case 129:
   crypto_unregister_rng(&ss_algs[i].alg.rng);
   break;
  }
 }

 writel(0, ss->base + SS_CTL);
 if (ss->reset)
  reset_control_assert(ss->reset);
 clk_disable_unprepare(ss->busclk);
 clk_disable_unprepare(ss->ssclk);
 return 0;
}
