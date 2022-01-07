
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_keypad {int stopped; TYPE_1__* pdev; int irq; int clk; scalar_t__ base; int wait; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SAMSUNG_KEYIFCON ;
 unsigned int SAMSUNG_KEYIFCON_INT_F_EN ;
 unsigned int SAMSUNG_KEYIFCON_INT_R_EN ;
 scalar_t__ SAMSUNG_KEYIFSTSCLR ;
 int clk_disable (int ) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 unsigned int readl (scalar_t__) ;
 int wake_up (int *) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void samsung_keypad_stop(struct samsung_keypad *keypad)
{
 unsigned int val;

 pm_runtime_get_sync(&keypad->pdev->dev);


 keypad->stopped = 1;
 wake_up(&keypad->wait);
 disable_irq(keypad->irq);


 writel(~0x0, keypad->base + SAMSUNG_KEYIFSTSCLR);


 val = readl(keypad->base + SAMSUNG_KEYIFCON);
 val &= ~(SAMSUNG_KEYIFCON_INT_F_EN | SAMSUNG_KEYIFCON_INT_R_EN);
 writel(val, keypad->base + SAMSUNG_KEYIFCON);

 clk_disable(keypad->clk);





 enable_irq(keypad->irq);

 pm_runtime_put(&keypad->pdev->dev);
}
