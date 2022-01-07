
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct input_dev* dev; struct byd_data* private; } ;
struct input_dev {int dummy; } ;
struct byd_data {int btn_right; int btn_left; int abs_y; int abs_x; int touch; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void byd_report_input(struct psmouse *psmouse)
{
 struct byd_data *priv = psmouse->private;
 struct input_dev *dev = psmouse->dev;

 input_report_key(dev, BTN_TOUCH, priv->touch);
 input_report_key(dev, BTN_TOOL_FINGER, priv->touch);

 input_report_abs(dev, ABS_X, priv->abs_x);
 input_report_abs(dev, ABS_Y, priv->abs_y);
 input_report_key(dev, BTN_LEFT, priv->btn_left);
 input_report_key(dev, BTN_RIGHT, priv->btn_right);

 input_sync(dev);
}
