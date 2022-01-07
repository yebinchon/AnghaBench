
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmouse_data {int abs_dev; } ;
struct psmouse {struct vmmouse_data* private; } ;


 int input_unregister_device (int ) ;
 int kfree (struct vmmouse_data*) ;
 int psmouse_reset (struct psmouse*) ;
 int vmmouse_disable (struct psmouse*) ;

__attribute__((used)) static void vmmouse_disconnect(struct psmouse *psmouse)
{
 struct vmmouse_data *priv = psmouse->private;

 vmmouse_disable(psmouse);
 psmouse_reset(psmouse);
 input_unregister_device(priv->abs_dev);
 kfree(priv);
}
