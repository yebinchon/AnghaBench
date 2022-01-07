
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tp_finger {int abs_y; int abs_x; int touch_major; } ;
struct touchpad_protocol {int number_of_fingers; int clicked; struct tp_finger* fingers; } ;
struct input_dev {int dummy; } ;
struct applespi_tp_info {scalar_t__ y_min; scalar_t__ y_max; } ;
struct applespi_data {TYPE_1__* pos; int * slots; scalar_t__ debug_tp_dim; int touchpad_input_dev; struct applespi_tp_info tp_info; } ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;


 int BTN_LEFT ;
 int applespi_debug_update_dimensions (struct applespi_data*,struct tp_finger const*) ;
 int input_mt_assign_slots (struct input_dev*,int *,TYPE_1__*,int,int ) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ le16_to_int (int ) ;
 int report_finger_data (struct input_dev*,int ,TYPE_1__*,struct tp_finger*) ;
 struct input_dev* smp_load_acquire (int *) ;

__attribute__((used)) static void report_tp_state(struct applespi_data *applespi,
       struct touchpad_protocol *t)
{
 const struct tp_finger *f;
 struct input_dev *input;
 const struct applespi_tp_info *tp_info = &applespi->tp_info;
 int i, n;


 input = smp_load_acquire(&applespi->touchpad_input_dev);
 if (!input)
  return;

 n = 0;

 for (i = 0; i < t->number_of_fingers; i++) {
  f = &t->fingers[i];
  if (le16_to_int(f->touch_major) == 0)
   continue;
  applespi->pos[n].x = le16_to_int(f->abs_x);
  applespi->pos[n].y = tp_info->y_min + tp_info->y_max -
         le16_to_int(f->abs_y);
  n++;

  if (applespi->debug_tp_dim)
   applespi_debug_update_dimensions(applespi, f);
 }

 input_mt_assign_slots(input, applespi->slots, applespi->pos, n, 0);

 for (i = 0; i < n; i++)
  report_finger_data(input, applespi->slots[i],
       &applespi->pos[i], &t->fingers[i]);

 input_mt_sync_frame(input);
 input_report_key(input, BTN_LEFT, t->clicked);

 input_sync(input);
}
