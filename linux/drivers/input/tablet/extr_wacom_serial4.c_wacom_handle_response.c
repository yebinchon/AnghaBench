
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom {char* data; char expect; int cmd_done; int result; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int complete (int *) ;
 int dev_err (int *,char*,char*) ;
 int wacom_handle_configuration_response (struct wacom*) ;
 int wacom_handle_coordinates_response (struct wacom*) ;
 int wacom_handle_model_response (struct wacom*) ;

__attribute__((used)) static void wacom_handle_response(struct wacom *wacom)
{
 if (wacom->data[0] != '~' || wacom->data[1] != wacom->expect) {
  dev_err(&wacom->dev->dev,
   "Wacom got an unexpected response: %s\n", wacom->data);
  wacom->result = -EIO;
 } else {
  wacom->result = 0;

  switch (wacom->data[1]) {
  case '#':
   wacom_handle_model_response(wacom);
   break;
  case 'R':
   wacom_handle_configuration_response(wacom);
   break;
  case 'C':
   wacom_handle_coordinates_response(wacom);
   break;
  }
 }

 complete(&wacom->cmd_done);
}
