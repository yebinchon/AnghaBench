
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct grover_beep_info {scalar_t__ enable_reg; scalar_t__ freq_regs; } ;
struct TYPE_4__ {struct grover_beep_info grover; } ;
struct sparcspkr_state {int lock; TYPE_2__ u; } ;
struct TYPE_3__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;


 unsigned int EV_SND ;


 struct sparcspkr_state* dev_get_drvdata (int ) ;
 int sbus_readb (scalar_t__) ;
 int sbus_writeb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int grover_spkr_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
 struct sparcspkr_state *state = dev_get_drvdata(dev->dev.parent);
 struct grover_beep_info *info = &state->u.grover;
 unsigned int count = 0;
 unsigned long flags;

 if (type != EV_SND)
  return -1;

 switch (code) {
  case 129: if (value) value = 1000;
  case 128: break;
  default: return -1;
 }

 if (value > 20 && value < 32767)
  count = 1193182 / value;

 spin_lock_irqsave(&state->lock, flags);

 if (count) {

  sbus_writeb(sbus_readb(info->enable_reg) | 3, info->enable_reg);

  sbus_writeb(0xB6, info->freq_regs + 1);

  sbus_writeb(count & 0xff, info->freq_regs + 0);
  sbus_writeb((count >> 8) & 0xff, info->freq_regs + 0);
 } else {

  sbus_writeb(sbus_readb(info->enable_reg) & 0xFC, info->enable_reg);
 }

 spin_unlock_irqrestore(&state->lock, flags);

 return 0;
}
