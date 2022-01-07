
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath79_gpio_ctrl {unsigned int base; } ;


 int readl (unsigned int) ;

__attribute__((used)) static u32 ath79_gpio_read(struct ath79_gpio_ctrl *ctrl, unsigned reg)
{
 return readl(ctrl->base + reg);
}
