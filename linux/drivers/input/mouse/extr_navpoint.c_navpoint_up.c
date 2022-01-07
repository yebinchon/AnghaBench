
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {int clk; } ;
struct navpoint {int gpio; int dev; struct ssp_device* ssp; } ;


 int SSCR0 ;
 int SSCR1 ;
 int SSSR ;
 int SSSR_CSS ;
 int SSTO ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int ) ;
 int sscr0 ;
 int sscr1 ;
 int sssr ;

__attribute__((used)) static void navpoint_up(struct navpoint *navpoint)
{
 struct ssp_device *ssp = navpoint->ssp;
 int timeout;

 clk_prepare_enable(ssp->clk);

 pxa_ssp_write_reg(ssp, SSCR1, sscr1);
 pxa_ssp_write_reg(ssp, SSSR, sssr);
 pxa_ssp_write_reg(ssp, SSTO, 0);
 pxa_ssp_write_reg(ssp, SSCR0, sscr0);


 for (timeout = 100; timeout != 0; --timeout) {
  if (!(pxa_ssp_read_reg(ssp, SSSR) & SSSR_CSS))
   break;
  msleep(1);
 }

 if (timeout == 0)
  dev_err(navpoint->dev,
   "timeout waiting for SSSR[CSS] to clear\n");

 if (gpio_is_valid(navpoint->gpio))
  gpio_set_value(navpoint->gpio, 1);
}
