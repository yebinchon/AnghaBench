
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct gc_subdev {int idx; } ;
struct gc {int dummy; } ;
struct ff_rumble_effect {scalar_t__ weak_magnitude; scalar_t__ strong_magnitude; } ;
struct TYPE_2__ {struct ff_rumble_effect rumble; } ;
struct ff_effect {scalar_t__ type; TYPE_1__ u; } ;


 scalar_t__ FF_RUMBLE ;
 unsigned int GC_N64_CMD_00 ;
 unsigned int GC_N64_CMD_01 ;
 unsigned int GC_N64_CMD_03 ;
 unsigned int GC_N64_CMD_1b ;
 unsigned int GC_N64_CMD_80 ;
 unsigned int GC_N64_CMD_c0 ;
 int GC_N64_DELAY ;
 int gc_n64_send_command (struct gc*,unsigned int,unsigned char) ;
 int gc_n64_send_stop_bit (struct gc*,unsigned char) ;
 struct gc* input_get_drvdata (struct input_dev*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int udelay (int ) ;

__attribute__((used)) static int gc_n64_play_effect(struct input_dev *dev, void *data,
         struct ff_effect *effect)
{
 int i;
 unsigned long flags;
 struct gc *gc = input_get_drvdata(dev);
 struct gc_subdev *sdev = data;
 unsigned char target = 1 << sdev->idx;

 if (effect->type == FF_RUMBLE) {
  struct ff_rumble_effect *rumble = &effect->u.rumble;
  unsigned int cmd =
   rumble->strong_magnitude || rumble->weak_magnitude ?
   GC_N64_CMD_01 : GC_N64_CMD_00;

  local_irq_save(flags);


  gc_n64_send_command(gc, GC_N64_CMD_03, target);
  gc_n64_send_command(gc, GC_N64_CMD_80, target);
  gc_n64_send_command(gc, GC_N64_CMD_01, target);
  for (i = 0; i < 32; i++)
   gc_n64_send_command(gc, GC_N64_CMD_80, target);
  gc_n64_send_stop_bit(gc, target);

  udelay(GC_N64_DELAY);


  gc_n64_send_command(gc, GC_N64_CMD_03, target);
  gc_n64_send_command(gc, GC_N64_CMD_c0, target);
  gc_n64_send_command(gc, GC_N64_CMD_1b, target);
  for (i = 0; i < 32; i++)
   gc_n64_send_command(gc, cmd, target);
  gc_n64_send_stop_bit(gc, target);

  local_irq_restore(flags);

 }

 return 0;
}
