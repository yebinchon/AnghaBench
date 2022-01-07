
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {struct elantech_data* private; } ;
struct TYPE_2__ {int hw_version; int set_hw_resolution; } ;
struct elantech_data {int reg_10; int reg_11; int reg_21; int reg_07; TYPE_1__ info; } ;


 unsigned char ETP_R10_ABSOLUTE_MODE ;
 int ETP_READ_BACK_DELAY ;
 int ETP_READ_BACK_TRIES ;
 int elantech_debug (char*,int) ;
 int elantech_read_reg (struct psmouse*,int,unsigned char*) ;
 int elantech_write_reg (struct psmouse*,int,int) ;
 int msleep (int ) ;
 int psmouse_err (struct psmouse*,char*) ;

__attribute__((used)) static int elantech_set_absolute_mode(struct psmouse *psmouse)
{
 struct elantech_data *etd = psmouse->private;
 unsigned char val;
 int tries = ETP_READ_BACK_TRIES;
 int rc = 0;

 switch (etd->info.hw_version) {
 case 1:
  etd->reg_10 = 0x16;
  etd->reg_11 = 0x8f;
  if (elantech_write_reg(psmouse, 0x10, etd->reg_10) ||
      elantech_write_reg(psmouse, 0x11, etd->reg_11)) {
   rc = -1;
  }
  break;

 case 2:

  etd->reg_10 = 0x54;
  etd->reg_11 = 0x88;
  etd->reg_21 = 0x60;
  if (elantech_write_reg(psmouse, 0x10, etd->reg_10) ||
      elantech_write_reg(psmouse, 0x11, etd->reg_11) ||
      elantech_write_reg(psmouse, 0x21, etd->reg_21)) {
   rc = -1;
  }
  break;

 case 3:
  if (etd->info.set_hw_resolution)
   etd->reg_10 = 0x0b;
  else
   etd->reg_10 = 0x01;

  if (elantech_write_reg(psmouse, 0x10, etd->reg_10))
   rc = -1;

  break;

 case 4:
  etd->reg_07 = 0x01;
  if (elantech_write_reg(psmouse, 0x07, etd->reg_07))
   rc = -1;

  goto skip_readback_reg_10;
 }

 if (rc == 0) {






  do {
   rc = elantech_read_reg(psmouse, 0x10, &val);
   if (rc == 0)
    break;
   tries--;
   elantech_debug("retrying read (%d).\n", tries);
   msleep(ETP_READ_BACK_DELAY);
  } while (tries > 0);

  if (rc) {
   psmouse_err(psmouse,
        "failed to read back register 0x10.\n");
  } else if (etd->info.hw_version == 1 &&
      !(val & ETP_R10_ABSOLUTE_MODE)) {
   psmouse_err(psmouse,
        "touchpad refuses to switch to absolute mode.\n");
   rc = -1;
  }
 }

 skip_readback_reg_10:
 if (rc)
  psmouse_err(psmouse, "failed to initialise registers.\n");

 return rc;
}
