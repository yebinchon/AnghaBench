
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int sclk; int aclk; int hclk; int dmaclk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
{
 clk_disable_unprepare(dev->dmaclk);
 clk_disable_unprepare(dev->hclk);
 clk_disable_unprepare(dev->aclk);
 clk_disable_unprepare(dev->sclk);
}
