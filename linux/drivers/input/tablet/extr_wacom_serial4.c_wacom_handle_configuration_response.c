
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom {TYPE_1__* dev; int res_y; int res_x; int data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int dev_warn (int *,char*) ;
 int sscanf (int ,char*,int*,int*,int*,int *,int *) ;

__attribute__((used)) static void wacom_handle_configuration_response(struct wacom *wacom)
{
 int r, skip;

 dev_dbg(&wacom->dev->dev, "Configuration string: %s\n", wacom->data);
 r = sscanf(wacom->data, "~R%x,%u,%u,%u,%u", &skip, &skip, &skip,
     &wacom->res_x, &wacom->res_y);
 if (r != 5)
  dev_warn(&wacom->dev->dev, "could not get resolution\n");
}
