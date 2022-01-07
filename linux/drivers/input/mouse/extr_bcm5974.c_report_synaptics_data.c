
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tp_finger {int origin; int tool_major; int touch_major; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int max; } ;
struct TYPE_3__ {int max; } ;
struct bcm5974_config {TYPE_2__ w; TYPE_1__ p; } ;


 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int clamp_val (int,int ,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int raw2int (int ) ;

__attribute__((used)) static void report_synaptics_data(struct input_dev *input,
      const struct bcm5974_config *cfg,
      const struct tp_finger *f, int raw_n)
{
 int abs_p = 0, abs_w = 0;

 if (raw_n) {
  int p = raw2int(f->touch_major);
  int w = raw2int(f->tool_major);
  if (p > 0 && raw2int(f->origin)) {
   abs_p = clamp_val(256 * p / cfg->p.max, 0, 255);
   abs_w = clamp_val(16 * w / cfg->w.max, 0, 15);
  }
 }

 input_report_abs(input, ABS_PRESSURE, abs_p);
 input_report_abs(input, ABS_TOOL_WIDTH, abs_w);
}
