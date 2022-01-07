
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
struct elantech_device_info {int dummy; } ;


 int CONFIG_MOUSE_ELAN_I2C_SMBUS ;
 int CONFIG_MOUSE_PS2_ELANTECH_SMBUS ;
 int EINVAL ;
 int IS_ENABLED (int ) ;
 int PSMOUSE_ELANTECH ;
 int PSMOUSE_ELANTECH_SMBUS ;
 int elantech_query_info (struct psmouse*,struct elantech_device_info*) ;
 int elantech_setup_ps2 (struct psmouse*,struct elantech_device_info*) ;
 int elantech_setup_smbus (struct psmouse*,struct elantech_device_info*,int) ;
 scalar_t__ elantech_use_host_notify (struct psmouse*,struct elantech_device_info*) ;
 int psmouse_reset (struct psmouse*) ;
 int psmouse_smbus_cleanup (struct psmouse*) ;
 int psmouse_warn (struct psmouse*,char*) ;

int elantech_init(struct psmouse *psmouse)
{
 struct elantech_device_info info;
 int error = -EINVAL;

 psmouse_reset(psmouse);

 error = elantech_query_info(psmouse, &info);
 if (error)
  goto init_fail;
 error = elantech_setup_ps2(psmouse, &info);
 if (error < 0) {




  psmouse_smbus_cleanup(psmouse);
  goto init_fail;
 }

 return PSMOUSE_ELANTECH;
 init_fail:
 psmouse_reset(psmouse);
 return error;
}
