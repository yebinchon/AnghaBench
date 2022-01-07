
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int UNIPHIER_GPIO_LINES_PER_BANK ;

__attribute__((used)) static unsigned int uniphier_gpio_get_nbanks(unsigned int ngpio)
{
 return DIV_ROUND_UP(ngpio, UNIPHIER_GPIO_LINES_PER_BANK);
}
