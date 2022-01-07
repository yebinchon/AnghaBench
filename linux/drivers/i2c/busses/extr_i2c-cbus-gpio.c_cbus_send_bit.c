
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbus_host {int clk; int dat; } ;


 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void cbus_send_bit(struct cbus_host *host, unsigned bit)
{
 gpiod_set_value(host->dat, bit ? 1 : 0);
 gpiod_set_value(host->clk, 1);
 gpiod_set_value(host->clk, 0);
}
