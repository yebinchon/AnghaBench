
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {int clk; } ;
struct navpoint {int gpio; struct ssp_device* ssp; } ;


 int SSCR0 ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int ) ;

__attribute__((used)) static void navpoint_down(struct navpoint *navpoint)
{
 struct ssp_device *ssp = navpoint->ssp;

 if (gpio_is_valid(navpoint->gpio))
  gpio_set_value(navpoint->gpio, 0);

 pxa_ssp_write_reg(ssp, SSCR0, 0);

 clk_disable_unprepare(ssp->clk);
}
