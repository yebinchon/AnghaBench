
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap4_keypad {int irq; } ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;


 int OMAP4_KBD_IRQENABLE ;
 int OMAP4_KBD_IRQSTATUS ;
 int OMAP4_KBD_WAKEUPENABLE ;
 int OMAP4_VAL_IRQDISABLE ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct omap4_keypad* input_get_drvdata (struct input_dev*) ;
 int kbd_read_irqreg (struct omap4_keypad*,int ) ;
 int kbd_write_irqreg (struct omap4_keypad*,int ,int ) ;
 int kbd_writel (struct omap4_keypad*,int ,int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void omap4_keypad_close(struct input_dev *input)
{
 struct omap4_keypad *keypad_data = input_get_drvdata(input);

 disable_irq(keypad_data->irq);


 kbd_write_irqreg(keypad_data, OMAP4_KBD_IRQENABLE,
    OMAP4_VAL_IRQDISABLE);
 kbd_writel(keypad_data, OMAP4_KBD_WAKEUPENABLE, 0);


 kbd_write_irqreg(keypad_data, OMAP4_KBD_IRQSTATUS,
    kbd_read_irqreg(keypad_data, OMAP4_KBD_IRQSTATUS));

 enable_irq(keypad_data->irq);

 pm_runtime_put_sync(input->dev.parent);
}
