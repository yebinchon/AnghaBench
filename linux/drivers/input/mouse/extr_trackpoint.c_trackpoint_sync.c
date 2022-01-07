
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trackpoint_data {scalar_t__ variant_id; } ;
struct psmouse {int ps2dev; struct trackpoint_data* private; } ;


 int TP_DEF_MB ;
 int TP_DEF_SOURCE_TAG ;
 int TP_DEF_TWOHAND ;
 int TP_MASK_MB ;
 int TP_MASK_SOURCE_TAG ;
 int TP_MASK_TWOHAND ;
 int TP_TOGGLE_MB ;
 int TP_TOGGLE_SOURCE_TAG ;
 int TP_TOGGLE_TWOHAND ;
 scalar_t__ TP_VARIANT_IBM ;
 int TRACKPOINT_UPDATE (int,struct psmouse*,struct trackpoint_data*,int ) ;
 int draghys ;
 int drift_time ;
 int ext_dev ;
 int inertia ;
 int jenks ;
 int mindrag ;
 int press_to_select ;
 int reach ;
 int sensitivity ;
 int skipback ;
 int speed ;
 int thresh ;
 int trackpoint_update_bit (int *,int ,int ,int ) ;
 int upthresh ;
 int ztime ;

__attribute__((used)) static int trackpoint_sync(struct psmouse *psmouse, bool in_power_on_state)
{
 struct trackpoint_data *tp = psmouse->private;

 if (!in_power_on_state && tp->variant_id == TP_VARIANT_IBM) {




  trackpoint_update_bit(&psmouse->ps2dev, TP_TOGGLE_TWOHAND,
          TP_MASK_TWOHAND, TP_DEF_TWOHAND);

  trackpoint_update_bit(&psmouse->ps2dev, TP_TOGGLE_SOURCE_TAG,
          TP_MASK_SOURCE_TAG, TP_DEF_SOURCE_TAG);

  trackpoint_update_bit(&psmouse->ps2dev, TP_TOGGLE_MB,
          TP_MASK_MB, TP_DEF_MB);
 }






 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, sensitivity);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, inertia);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, speed);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, reach);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, draghys);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, mindrag);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, thresh);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, upthresh);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, ztime);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, jenks);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, drift_time);


 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, press_to_select);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, skipback);
 TRACKPOINT_UPDATE(in_power_on_state, psmouse, tp, ext_dev);

 return 0;
}
