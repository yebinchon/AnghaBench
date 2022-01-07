
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbus_host {int clk; int dat; } ;


 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;

__attribute__((used)) static int cbus_receive_bit(struct cbus_host *host)
{
 int ret;

 gpiod_set_value(host->clk, 1);
 ret = gpiod_get_value(host->dat);
 gpiod_set_value(host->clk, 0);
 return ret;
}
