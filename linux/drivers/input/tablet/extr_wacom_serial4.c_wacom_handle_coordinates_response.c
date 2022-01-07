
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom {TYPE_1__* dev; int max_y; int max_x; int data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int dev_warn (int *,char*) ;
 int sscanf (int ,char*,int *,int *) ;

__attribute__((used)) static void wacom_handle_coordinates_response(struct wacom *wacom)
{
 int r;

 dev_dbg(&wacom->dev->dev, "Coordinates string: %s\n", wacom->data);
 r = sscanf(wacom->data, "~C%u,%u", &wacom->max_x, &wacom->max_y);
 if (r != 2)
  dev_warn(&wacom->dev->dev, "could not get max coordinates\n");
}
