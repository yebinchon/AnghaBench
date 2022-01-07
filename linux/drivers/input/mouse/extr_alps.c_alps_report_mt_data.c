
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_fields {TYPE_1__* mt; } ;
struct alps_data {struct alps_fields f; } ;
struct TYPE_2__ {int y; int x; } ;


 int MAX_TOUCHES ;
 int alps_set_slot (struct input_dev*,int,int ,int ) ;
 int input_mt_assign_slots (struct input_dev*,int*,TYPE_1__*,int,int ) ;
 int input_mt_sync_frame (struct input_dev*) ;

__attribute__((used)) static void alps_report_mt_data(struct psmouse *psmouse, int n)
{
 struct alps_data *priv = psmouse->private;
 struct input_dev *dev = psmouse->dev;
 struct alps_fields *f = &priv->f;
 int i, slot[MAX_TOUCHES];

 input_mt_assign_slots(dev, slot, f->mt, n, 0);
 for (i = 0; i < n; i++)
  alps_set_slot(dev, slot[i], f->mt[i].x, f->mt[i].y);

 input_mt_sync_frame(dev);
}
