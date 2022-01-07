
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct alps_data* private; } ;
struct alps_data {scalar_t__ dev3; scalar_t__ dev2; int timer; } ;


 int IS_ERR_OR_NULL (scalar_t__) ;
 int del_timer_sync (int *) ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct alps_data*) ;
 int psmouse_reset (struct psmouse*) ;

__attribute__((used)) static void alps_disconnect(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;

 psmouse_reset(psmouse);
 del_timer_sync(&priv->timer);
 if (priv->dev2)
  input_unregister_device(priv->dev2);
 if (!IS_ERR_OR_NULL(priv->dev3))
  input_unregister_device(priv->dev3);
 kfree(priv);
}
