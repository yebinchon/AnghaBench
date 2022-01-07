
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_kbd {int last_key; int clk; scalar_t__ io_base; } ;
struct input_dev {int dummy; } ;


 int KEY_RESERVED ;
 scalar_t__ MODE_CTL_REG ;
 int MODE_CTL_START_SCAN ;
 int clk_disable (int ) ;
 struct spear_kbd* input_get_drvdata (struct input_dev*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void spear_kbd_close(struct input_dev *dev)
{
 struct spear_kbd *kbd = input_get_drvdata(dev);
 u32 val;


 val = readl_relaxed(kbd->io_base + MODE_CTL_REG);
 val &= ~MODE_CTL_START_SCAN;
 writel_relaxed(val, kbd->io_base + MODE_CTL_REG);

 clk_disable(kbd->clk);

 kbd->last_key = KEY_RESERVED;
}
