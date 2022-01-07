
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct alps_data* private; } ;
struct alps_data {int (* hw_init ) (struct psmouse*) ;} ;


 scalar_t__ alps_identify (struct psmouse*,struct alps_data*) ;
 int psmouse_reset (struct psmouse*) ;
 int stub1 (struct psmouse*) ;

__attribute__((used)) static int alps_reconnect(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;

 psmouse_reset(psmouse);

 if (alps_identify(psmouse, priv) < 0)
  return -1;

 return priv->hw_init(psmouse);
}
