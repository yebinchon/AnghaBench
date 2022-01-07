
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct magicmouse_sc {int scroll_accel; TYPE_2__* input; TYPE_1__* touches; } ;
struct TYPE_4__ {int key; } ;
struct TYPE_3__ {int x; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int SCROLL_ACCEL_DEFAULT ;
 scalar_t__ emulate_3button ;
 int input_report_key (TYPE_2__*,int ,int) ;
 int magicmouse_firm_touch (struct magicmouse_sc*) ;
 int middle_button_start ;
 int middle_button_stop ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void magicmouse_emit_buttons(struct magicmouse_sc *msc, int state)
{
 int last_state = test_bit(BTN_LEFT, msc->input->key) << 0 |
  test_bit(BTN_RIGHT, msc->input->key) << 1 |
  test_bit(BTN_MIDDLE, msc->input->key) << 2;

 if (emulate_3button) {
  int id;





  if (state == 0) {

  } else if (last_state != 0) {
   state = last_state;
  } else if ((id = magicmouse_firm_touch(msc)) >= 0) {
   int x = msc->touches[id].x;
   if (x < middle_button_start)
    state = 1;
   else if (x > middle_button_stop)
    state = 2;
   else
    state = 4;
  }

  input_report_key(msc->input, BTN_MIDDLE, state & 4);
 }

 input_report_key(msc->input, BTN_LEFT, state & 1);
 input_report_key(msc->input, BTN_RIGHT, state & 2);

 if (state != last_state)
  msc->scroll_accel = SCROLL_ACCEL_DEFAULT;
}
