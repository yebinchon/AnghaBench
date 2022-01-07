
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct psmouse {struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int y; int x; } ;
struct alps_fields {scalar_t__ pressure; int middle; int right; int left; TYPE_2__* mt; TYPE_1__ st; } ;
struct alps_data {int second_touch; struct alps_fields f; } ;
struct TYPE_4__ {int y; int x; } ;


 int ABS_PRESSURE ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int alps_set_slot (struct input_dev*,int,int ,int ) ;
 int input_mt_report_finger_count (struct input_dev*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,scalar_t__) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void alps_report_semi_mt_data(struct psmouse *psmouse, int fingers)
{
 struct alps_data *priv = psmouse->private;
 struct input_dev *dev = psmouse->dev;
 struct alps_fields *f = &priv->f;


 if (fingers < 2) {
  f->mt[0].x = f->st.x;
  f->mt[0].y = f->st.y;
  fingers = f->pressure > 0 ? 1 : 0;
  priv->second_touch = -1;
 }

 if (fingers >= 1)
  alps_set_slot(dev, 0, f->mt[0].x, f->mt[0].y);
 if (fingers >= 2)
  alps_set_slot(dev, 1, f->mt[1].x, f->mt[1].y);
 input_mt_sync_frame(dev);

 input_mt_report_finger_count(dev, fingers);

 input_report_key(dev, BTN_LEFT, f->left);
 input_report_key(dev, BTN_RIGHT, f->right);
 input_report_key(dev, BTN_MIDDLE, f->middle);

 input_report_abs(dev, ABS_PRESSURE, f->pressure);

 input_sync(dev);
}
