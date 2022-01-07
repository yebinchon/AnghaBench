
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;
struct ili210x {int max_touches; scalar_t__ model; int prop; struct input_dev* input; } ;


 scalar_t__ MODEL_ILI210X ;
 scalar_t__ MODEL_ILI251X ;
 int MT_TOOL_FINGER ;
 int ili210x_touchdata_to_coords (struct ili210x*,int*,int,unsigned int*,unsigned int*) ;
 int ili251x_touchdata_to_coords (struct ili210x*,int*,int,unsigned int*,unsigned int*) ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_sync (struct input_dev*) ;
 int touchscreen_report_pos (struct input_dev*,int *,unsigned int,unsigned int,int) ;

__attribute__((used)) static bool ili210x_report_events(struct ili210x *priv, u8 *touchdata)
{
 struct input_dev *input = priv->input;
 int i;
 bool contact = 0, touch = 0;
 unsigned int x = 0, y = 0;

 for (i = 0; i < priv->max_touches; i++) {
  if (priv->model == MODEL_ILI210X) {
   touch = ili210x_touchdata_to_coords(priv, touchdata,
           i, &x, &y);
  } else if (priv->model == MODEL_ILI251X) {
   touch = ili251x_touchdata_to_coords(priv, touchdata,
           i, &x, &y);
   if (touch)
    contact = 1;
  }

  input_mt_slot(input, i);
  input_mt_report_slot_state(input, MT_TOOL_FINGER, touch);
  if (!touch)
   continue;
  touchscreen_report_pos(input, &priv->prop, x, y,
           1);
 }

 input_mt_report_pointer_emulation(input, 0);
 input_sync(input);

 if (priv->model == MODEL_ILI210X)
  contact = touchdata[0] & 0xf3;

 return contact;
}
