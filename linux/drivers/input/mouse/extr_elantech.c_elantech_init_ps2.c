
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
struct elantech_device_info {int dummy; } ;


 int EINVAL ;
 int elantech_query_info (struct psmouse*,struct elantech_device_info*) ;
 int elantech_setup_ps2 (struct psmouse*,struct elantech_device_info*) ;
 int psmouse_reset (struct psmouse*) ;

int elantech_init_ps2(struct psmouse *psmouse)
{
 struct elantech_device_info info;
 int error = -EINVAL;

 psmouse_reset(psmouse);

 error = elantech_query_info(psmouse, &info);
 if (error)
  goto init_fail;

 error = elantech_setup_ps2(psmouse, &info);
 if (error)
  goto init_fail;

 return 0;
 init_fail:
 psmouse_reset(psmouse);
 return error;
}
