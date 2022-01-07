
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom {int* data; int res_x; int res_y; int extra_z_bits; int flags; int max_x; int max_y; int eraser_mask; TYPE_2__* dev; int result; } ;
struct TYPE_3__ {int version; } ;
struct TYPE_4__ {char* name; int dev; TYPE_1__ id; } ;


 int ENODEV ;
 int F_COVERS_SCREEN ;
 int F_HAS_SCROLLWHEEL ;
 int F_HAS_STYLUS2 ;






 int dev_err (int *,char*,int*) ;
 int dev_info (int *,char*,char*,int,int) ;
 int sscanf (char*,char*,int*,int*) ;
 char* strrchr (int*,char) ;

__attribute__((used)) static void wacom_handle_model_response(struct wacom *wacom)
{
 int major_v, minor_v, r = 0;
 char *p;

 p = strrchr(wacom->data, 'V');
 if (p)
  r = sscanf(p + 1, "%u.%u", &major_v, &minor_v);
 if (r != 2)
  major_v = minor_v = 0;

 switch (wacom->data[2] << 8 | wacom->data[3]) {
 case 132:
 case 131:
  if ((wacom->data[2] << 8 | wacom->data[3]) == 132) {
   wacom->dev->name = "Wacom Cintiq";
   wacom->dev->id.version = 132;
  } else {
   wacom->dev->name = "Wacom Cintiq II";
   wacom->dev->id.version = 131;
  }
  wacom->res_x = 508;
  wacom->res_y = 508;

  switch (wacom->data[5] << 8 | wacom->data[6]) {
  case 0x3731:
   wacom->res_x = 2540;
   wacom->res_y = 2540;

  case 0x3535:
  case 0x3830:
   wacom->extra_z_bits = 2;
  }

  wacom->flags = F_COVERS_SCREEN;
  break;

 case 128:
  wacom->dev->name = "Wacom Penpartner";
  wacom->dev->id.version = 128;
  wacom->res_x = 1000;
  wacom->res_y = 1000;
  break;

 case 129:
  wacom->dev->name = "Wacom Graphire";
  wacom->dev->id.version = 129;
  wacom->res_x = 1016;
  wacom->res_y = 1016;
  wacom->max_x = 5103;
  wacom->max_y = 3711;
  wacom->extra_z_bits = 2;
  wacom->eraser_mask = 0x08;
  wacom->flags = F_HAS_STYLUS2 | F_HAS_SCROLLWHEEL;
  break;

 case 133:
 case 130:
  wacom->dev->name = "Wacom Digitizer II";
  wacom->dev->id.version = 130;
  if (major_v == 1 && minor_v <= 2)
   wacom->extra_z_bits = 0;
  break;

 default:
  dev_err(&wacom->dev->dev, "Unsupported Wacom model %s\n",
   wacom->data);
  wacom->result = -ENODEV;
  return;
 }

 dev_info(&wacom->dev->dev, "%s tablet, version %u.%u\n",
   wacom->dev->name, major_v, minor_v);
}
