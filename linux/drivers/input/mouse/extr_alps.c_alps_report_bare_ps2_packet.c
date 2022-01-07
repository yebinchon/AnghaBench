
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_data {scalar_t__ proto_version; int flags; struct input_dev* dev3; int dev3_register_work; struct input_dev* dev2; } ;


 int ALPS_DUALPOINT ;
 scalar_t__ ALPS_PROTO_V2 ;
 int IS_ERR (struct input_dev*) ;
 int IS_ERR_OR_NULL (struct input_dev*) ;
 int alps_report_buttons (struct input_dev*,struct input_dev*,unsigned char,unsigned char,unsigned char) ;
 int input_sync (struct input_dev*) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;
 int psmouse_report_standard_motion (struct input_dev*,unsigned char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void alps_report_bare_ps2_packet(struct psmouse *psmouse,
     unsigned char packet[],
     bool report_buttons)
{
 struct alps_data *priv = psmouse->private;
 struct input_dev *dev, *dev2 = ((void*)0);


 if (priv->proto_version == ALPS_PROTO_V2 &&
     (priv->flags & ALPS_DUALPOINT)) {

  dev = priv->dev2;
  dev2 = psmouse->dev;
 } else if (unlikely(IS_ERR_OR_NULL(priv->dev3))) {

  if (!IS_ERR(priv->dev3))
   psmouse_queue_work(psmouse, &priv->dev3_register_work,
        0);
  return;
 } else {
  dev = priv->dev3;
 }

 if (report_buttons)
  alps_report_buttons(dev, dev2,
    packet[0] & 1, packet[0] & 2, packet[0] & 4);

 psmouse_report_standard_motion(dev, packet);

 input_sync(dev);
}
