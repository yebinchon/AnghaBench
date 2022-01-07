
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; int * private; int model; } ;
struct alps_data {int flags; int proto_version; } ;


 int ALPS_DUALPOINT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int alps_identify (struct psmouse*,struct alps_data*) ;
 scalar_t__ alps_is_cs19_trackpoint (struct psmouse*) ;
 int kfree (struct alps_data*) ;
 struct alps_data* kzalloc (int,int ) ;
 int psmouse_dbg (struct psmouse*,char*) ;
 int psmouse_reset (struct psmouse*) ;

int alps_detect(struct psmouse *psmouse, bool set_properties)
{
 struct alps_data *priv;
 int error;

 error = alps_identify(psmouse, ((void*)0));
 if (error)
  return error;
 if (alps_is_cs19_trackpoint(psmouse)) {
  psmouse_dbg(psmouse,
       "ALPS CS19 trackpoint-only device detected, ignoring\n");
  return -EINVAL;
 }







 psmouse_reset(psmouse);

 priv = kzalloc(sizeof(struct alps_data), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 error = alps_identify(psmouse, priv);
 if (error) {
  kfree(priv);
  return error;
 }

 if (set_properties) {
  psmouse->vendor = "ALPS";
  psmouse->name = priv->flags & ALPS_DUALPOINT ?
    "DualPoint TouchPad" : "GlidePoint";
  psmouse->model = priv->proto_version;
 } else {






  kfree(priv);
  psmouse->private = ((void*)0);
 }

 return 0;
}
