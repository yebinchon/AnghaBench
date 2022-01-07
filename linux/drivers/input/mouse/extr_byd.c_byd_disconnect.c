
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct byd_data* private; } ;
struct byd_data {int timer; } ;


 int del_timer (int *) ;
 int kfree (struct byd_data*) ;

__attribute__((used)) static void byd_disconnect(struct psmouse *psmouse)
{
 struct byd_data *priv = psmouse->private;

 if (priv) {
  del_timer(&priv->timer);
  kfree(psmouse->private);
  psmouse->private = ((void*)0);
 }
}
