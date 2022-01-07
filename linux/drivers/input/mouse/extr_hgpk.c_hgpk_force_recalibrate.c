
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {scalar_t__ model; struct hgpk_data* private; } ;
struct hgpk_data {scalar_t__ recalib_window; } ;


 scalar_t__ HGPK_MODEL_C ;
 int PSMOUSE_INITIALIZING ;
 int autorecal ;
 int hgpk_reset_device (struct psmouse*,int) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 scalar_t__ psmouse_activate (struct psmouse*) ;
 int psmouse_dbg (struct psmouse*,char*) ;
 int psmouse_set_state (struct psmouse*,int ) ;
 scalar_t__ recal_guard_time ;
 scalar_t__ tpdebug ;

__attribute__((used)) static int hgpk_force_recalibrate(struct psmouse *psmouse)
{
 struct hgpk_data *priv = psmouse->private;
 int err;


 if (psmouse->model < HGPK_MODEL_C)
  return 0;

 if (!autorecal) {
  psmouse_dbg(psmouse, "recalibration disabled, ignoring\n");
  return 0;
 }

 psmouse_dbg(psmouse, "recalibrating touchpad..\n");


 psmouse_set_state(psmouse, PSMOUSE_INITIALIZING);


 err = hgpk_reset_device(psmouse, 1);
 if (err)
  return err;







 if (psmouse_activate(psmouse))
  return -1;

 if (tpdebug)
  psmouse_dbg(psmouse, "touchpad reactivated\n");






 if (recal_guard_time)
  priv->recalib_window = jiffies +
   msecs_to_jiffies(recal_guard_time);

 return 0;
}
