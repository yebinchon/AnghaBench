
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgpio_instance {int * gpio_dir; scalar_t__ regs; int * gpio_state; int * gpio_width; } ;


 scalar_t__ XGPIO_CHANNEL_OFFSET ;
 scalar_t__ XGPIO_DATA_OFFSET ;
 scalar_t__ XGPIO_TRI_OFFSET ;
 int xgpio_writereg (scalar_t__,int ) ;

__attribute__((used)) static void xgpio_save_regs(struct xgpio_instance *chip)
{
 xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET, chip->gpio_state[0]);
 xgpio_writereg(chip->regs + XGPIO_TRI_OFFSET, chip->gpio_dir[0]);

 if (!chip->gpio_width[1])
  return;

 xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET + XGPIO_CHANNEL_OFFSET,
         chip->gpio_state[1]);
 xgpio_writereg(chip->regs + XGPIO_TRI_OFFSET + XGPIO_CHANNEL_OFFSET,
         chip->gpio_dir[1]);
}
