
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_keypad {TYPE_1__* pdev; int stopped; int wait; scalar_t__ base; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 scalar_t__ SAMSUNG_KEYIFSTSCLR ;
 int SAMSUNG_MAX_COLS ;
 int msecs_to_jiffies (int) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 unsigned int readl (scalar_t__) ;
 int samsung_keypad_report (struct samsung_keypad*,unsigned int*) ;
 int samsung_keypad_scan (struct samsung_keypad*,unsigned int*) ;
 int wait_event_timeout (int ,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t samsung_keypad_irq(int irq, void *dev_id)
{
 struct samsung_keypad *keypad = dev_id;
 unsigned int row_state[SAMSUNG_MAX_COLS];
 unsigned int val;
 bool key_down;

 pm_runtime_get_sync(&keypad->pdev->dev);

 do {
  val = readl(keypad->base + SAMSUNG_KEYIFSTSCLR);

  writel(~0x0, keypad->base + SAMSUNG_KEYIFSTSCLR);

  samsung_keypad_scan(keypad, row_state);

  key_down = samsung_keypad_report(keypad, row_state);
  if (key_down)
   wait_event_timeout(keypad->wait, keypad->stopped,
        msecs_to_jiffies(50));

 } while (key_down && !keypad->stopped);

 pm_runtime_put(&keypad->pdev->dev);

 return IRQ_HANDLED;
}
