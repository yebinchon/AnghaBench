
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* name; struct input_dev* dev; } ;
struct ps2pp_info {int features; int kind; } ;
struct input_dev {int dummy; } ;


 int BTN_BACK ;
 int BTN_EXTRA ;
 int BTN_FORWARD ;
 int BTN_SIDE ;
 int BTN_TASK ;
 int EV_KEY ;
 int EV_REL ;
 int PS2PP_EXTRA_BTN ;
 int PS2PP_HWHEEL ;




 int PS2PP_NAV_BTN ;
 int PS2PP_SIDE_BTN ;
 int PS2PP_TASK_BTN ;
 int PS2PP_WHEEL ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int input_set_capability (struct input_dev*,int ,int ) ;

__attribute__((used)) static void ps2pp_set_model_properties(struct psmouse *psmouse,
           const struct ps2pp_info *model_info,
           bool using_ps2pp)
{
 struct input_dev *input_dev = psmouse->dev;

 if (model_info->features & PS2PP_SIDE_BTN)
  input_set_capability(input_dev, EV_KEY, BTN_SIDE);

 if (model_info->features & PS2PP_EXTRA_BTN)
  input_set_capability(input_dev, EV_KEY, BTN_EXTRA);

 if (model_info->features & PS2PP_TASK_BTN)
  input_set_capability(input_dev, EV_KEY, BTN_TASK);

 if (model_info->features & PS2PP_NAV_BTN) {
  input_set_capability(input_dev, EV_KEY, BTN_FORWARD);
  input_set_capability(input_dev, EV_KEY, BTN_BACK);
 }

 if (model_info->features & PS2PP_WHEEL)
  input_set_capability(input_dev, EV_REL, REL_WHEEL);

 if (model_info->features & PS2PP_HWHEEL)
  input_set_capability(input_dev, EV_REL, REL_HWHEEL);

 switch (model_info->kind) {

 case 128:
  psmouse->name = "Wheel Mouse";
  break;

 case 131:
  psmouse->name = "MX Mouse";
  break;

 case 130:
  psmouse->name = "TouchPad 3";
  break;

 case 129:
  psmouse->name = "TrackMan";
  break;

 default:





  if (using_ps2pp)
   psmouse->name = "Mouse";
  break;
 }
}
