
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trackpoint_data {scalar_t__ variant_id; } ;
struct psmouse {int ps2dev; struct trackpoint_data* private; } ;


 scalar_t__ TP_VARIANT_IBM ;
 scalar_t__ trackpoint_power_on_reset (int *) ;
 int trackpoint_start_protocol (struct psmouse*,int *,int *) ;
 int trackpoint_sync (struct psmouse*,int) ;

__attribute__((used)) static int trackpoint_reconnect(struct psmouse *psmouse)
{
 struct trackpoint_data *tp = psmouse->private;
 int error;
 bool was_reset;

 error = trackpoint_start_protocol(psmouse, ((void*)0), ((void*)0));
 if (error)
  return error;

 was_reset = tp->variant_id == TP_VARIANT_IBM &&
      trackpoint_power_on_reset(&psmouse->ps2dev) == 0;

 error = trackpoint_sync(psmouse, was_reset);
 if (error)
  return error;

 return 0;
}
