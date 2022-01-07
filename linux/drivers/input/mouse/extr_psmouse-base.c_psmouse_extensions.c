
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;


 int CONFIG_MOUSE_PS2_FOCALTECH ;
 int CONFIG_MOUSE_PS2_SYNAPTICS ;
 int CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS ;
 scalar_t__ IS_ENABLED (int ) ;
 int PSMOUSE_ALPS ;
 int PSMOUSE_CMD_RESET_DIS ;
 int PSMOUSE_CYPRESS ;
 int PSMOUSE_ELANTECH ;
 int PSMOUSE_FOCALTECH ;
 int PSMOUSE_FSP ;
 int PSMOUSE_GENPS ;
 int PSMOUSE_HGPK ;
 unsigned int PSMOUSE_IMEX ;
 unsigned int PSMOUSE_IMPS ;
 int PSMOUSE_LIFEBOOK ;
 unsigned int PSMOUSE_PS2 ;
 int PSMOUSE_PS2PP ;
 int PSMOUSE_SYNAPTICS ;
 int PSMOUSE_THINKPS ;
 int PSMOUSE_TOUCHKIT_PS2 ;
 int PSMOUSE_TRACKPOINT ;
 int PSMOUSE_VMMOUSE ;
 int elantech_init (struct psmouse*) ;
 int focaltech_detect ;
 scalar_t__ focaltech_init (struct psmouse*) ;
 int ps2_command (int *,int *,int ) ;
 scalar_t__ psmouse_do_detect (int ,struct psmouse*,int,int) ;
 unsigned int psmouse_max_proto ;
 int psmouse_reset (struct psmouse*) ;
 scalar_t__ psmouse_try_protocol (struct psmouse*,unsigned int,unsigned int*,int,int) ;
 int synaptics_detect ;
 int synaptics_init (struct psmouse*) ;
 int synaptics_reset (struct psmouse*) ;

__attribute__((used)) static int psmouse_extensions(struct psmouse *psmouse,
         unsigned int max_proto, bool set_properties)
{
 bool synaptics_hardware = 0;
 int ret;





 if (psmouse_do_detect(focaltech_detect,
         psmouse, 0, set_properties)) {
  if (max_proto > PSMOUSE_IMEX &&
      IS_ENABLED(CONFIG_MOUSE_PS2_FOCALTECH) &&
      (!set_properties || focaltech_init(psmouse) == 0)) {
   return PSMOUSE_FOCALTECH;
  }
  psmouse_max_proto = max_proto = PSMOUSE_PS2;
 }





 if (psmouse_try_protocol(psmouse, PSMOUSE_LIFEBOOK, &max_proto,
     set_properties, max_proto > PSMOUSE_IMEX))
  return PSMOUSE_LIFEBOOK;

 if (psmouse_try_protocol(psmouse, PSMOUSE_VMMOUSE, &max_proto,
     set_properties, max_proto > PSMOUSE_IMEX))
  return PSMOUSE_VMMOUSE;





 if (max_proto > PSMOUSE_IMEX &&
     psmouse_try_protocol(psmouse, PSMOUSE_THINKPS, &max_proto,
     set_properties, 1)) {
  return PSMOUSE_THINKPS;
 }







 if (max_proto > PSMOUSE_PS2 &&
     psmouse_do_detect(synaptics_detect,
         psmouse, 0, set_properties)) {
  synaptics_hardware = 1;

  if (max_proto > PSMOUSE_IMEX) {





   if (IS_ENABLED(CONFIG_MOUSE_PS2_SYNAPTICS) ||
       IS_ENABLED(CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS)) {
    if (!set_properties)
     return PSMOUSE_SYNAPTICS;

    ret = synaptics_init(psmouse);
    if (ret >= 0)
     return ret;
   }







   max_proto = PSMOUSE_IMEX;
  }





  synaptics_reset(psmouse);
 }






 if (max_proto > PSMOUSE_IMEX &&
     psmouse_try_protocol(psmouse, PSMOUSE_CYPRESS, &max_proto,
     set_properties, 1)) {
  return PSMOUSE_CYPRESS;
 }


 if (max_proto > PSMOUSE_IMEX) {
  ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_RESET_DIS);
  if (psmouse_try_protocol(psmouse, PSMOUSE_ALPS,
      &max_proto, set_properties, 1))
   return PSMOUSE_ALPS;
 }


 if (max_proto > PSMOUSE_IMEX &&
     psmouse_try_protocol(psmouse, PSMOUSE_HGPK, &max_proto,
     set_properties, 1)) {
  return PSMOUSE_HGPK;
 }


 if (max_proto > PSMOUSE_IMEX &&
     psmouse_try_protocol(psmouse, PSMOUSE_ELANTECH,
     &max_proto, set_properties, 0)) {
  if (!set_properties)
   return PSMOUSE_ELANTECH;

  ret = elantech_init(psmouse);
  if (ret >= 0)
   return ret;
 }

 if (max_proto > PSMOUSE_IMEX) {
  if (psmouse_try_protocol(psmouse, PSMOUSE_GENPS,
      &max_proto, set_properties, 1))
   return PSMOUSE_GENPS;

  if (psmouse_try_protocol(psmouse, PSMOUSE_PS2PP,
      &max_proto, set_properties, 1))
   return PSMOUSE_PS2PP;

  if (psmouse_try_protocol(psmouse, PSMOUSE_TRACKPOINT,
      &max_proto, set_properties, 1))
   return PSMOUSE_TRACKPOINT;

  if (psmouse_try_protocol(psmouse, PSMOUSE_TOUCHKIT_PS2,
      &max_proto, set_properties, 1))
   return PSMOUSE_TOUCHKIT_PS2;
 }





 if (max_proto > PSMOUSE_IMEX &&
     psmouse_try_protocol(psmouse, PSMOUSE_FSP,
     &max_proto, set_properties, 1)) {
  return PSMOUSE_FSP;
 }






 ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_RESET_DIS);
 psmouse_reset(psmouse);

 if (max_proto >= PSMOUSE_IMEX &&
     psmouse_try_protocol(psmouse, PSMOUSE_IMEX,
     &max_proto, set_properties, 1)) {
  return PSMOUSE_IMEX;
 }

 if (max_proto >= PSMOUSE_IMPS &&
     psmouse_try_protocol(psmouse, PSMOUSE_IMPS,
     &max_proto, set_properties, 1)) {
  return PSMOUSE_IMPS;
 }





 psmouse_try_protocol(psmouse, PSMOUSE_PS2,
        &max_proto, set_properties, 1);

 if (synaptics_hardware) {






  psmouse_reset(psmouse);
 }

 return PSMOUSE_PS2;
}
