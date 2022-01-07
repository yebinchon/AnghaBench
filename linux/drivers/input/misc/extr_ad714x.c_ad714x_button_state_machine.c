
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ad714x_chip {int h_state; int l_state; int dev; TYPE_2__* sw; TYPE_1__* hw; } ;
struct ad714x_button_plat {int h_mask; int l_mask; int keycode; } ;
struct ad714x_button_drv {int state; int input; } ;
struct TYPE_4__ {struct ad714x_button_drv* button; } ;
struct TYPE_3__ {struct ad714x_button_plat* button; } ;




 int dev_dbg (int ,char*,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void ad714x_button_state_machine(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_button_plat *hw = &ad714x->hw->button[idx];
 struct ad714x_button_drv *sw = &ad714x->sw->button[idx];

 switch (sw->state) {
 case 128:
  if (((ad714x->h_state & hw->h_mask) == hw->h_mask) &&
      ((ad714x->l_state & hw->l_mask) == hw->l_mask)) {
   dev_dbg(ad714x->dev, "button %d touched\n", idx);
   input_report_key(sw->input, hw->keycode, 1);
   input_sync(sw->input);
   sw->state = 129;
  }
  break;

 case 129:
  if (((ad714x->h_state & hw->h_mask) != hw->h_mask) ||
      ((ad714x->l_state & hw->l_mask) != hw->l_mask)) {
   dev_dbg(ad714x->dev, "button %d released\n", idx);
   input_report_key(sw->input, hw->keycode, 0);
   input_sync(sw->input);
   sw->state = 128;
  }
  break;

 default:
  break;
 }
}
