
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {scalar_t__ max_y; scalar_t__ max_x; scalar_t__ res_y; scalar_t__ res_x; } ;
struct serio {int dummy; } ;


 int REQUEST_CONFIGURATION_STRING ;
 int REQUEST_MAX_COORDINATES ;
 int REQUEST_MODEL_AND_ROM_VERSION ;
 int wacom_send_and_wait (struct wacom*,struct serio*,int ,char*) ;
 int wacom_send_setup_string (struct wacom*,struct serio*) ;

__attribute__((used)) static int wacom_setup(struct wacom *wacom, struct serio *serio)
{
 int err;




 err = wacom_send_and_wait(wacom, serio, REQUEST_MODEL_AND_ROM_VERSION,
      "model and version");
 if (err)
  return err;

 if (!(wacom->res_x && wacom->res_y)) {
  err = wacom_send_and_wait(wacom, serio,
       REQUEST_CONFIGURATION_STRING,
       "configuration string");
  if (err)
   return err;
 }

 if (!(wacom->max_x && wacom->max_y)) {
  err = wacom_send_and_wait(wacom, serio,
       REQUEST_MAX_COORDINATES,
       "coordinates string");
  if (err)
   return err;
 }

 return wacom_send_setup_string(wacom, serio);
}
