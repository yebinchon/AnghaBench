
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_keyscan {int clk; scalar_t__ base; } ;


 scalar_t__ KEYSCAN_CONFIG_OFF ;
 int clk_disable (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void keyscan_stop(struct st_keyscan *keypad)
{
 writel(0, keypad->base + KEYSCAN_CONFIG_OFF);

 clk_disable(keypad->clk);
}
