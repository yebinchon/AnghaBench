
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath79_gpio_ctrl {unsigned int base; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static void ath79_gpio_write(struct ath79_gpio_ctrl *ctrl,
   unsigned reg, u32 val)
{
 writel(val, ctrl->base + reg);
}
