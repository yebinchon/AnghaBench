
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {int ps2dev; } ;


 int ENODEV ;
 int MAKE_PS2_CMD (int ,int,int ) ;
 int TP_READ_ID ;




 int ps2_command (int *,int*,int ) ;

__attribute__((used)) static int trackpoint_start_protocol(struct psmouse *psmouse,
         u8 *variant_id, u8 *firmware_id)
{
 u8 param[2] = { 0 };
 int error;

 error = ps2_command(&psmouse->ps2dev,
       param, MAKE_PS2_CMD(0, 2, TP_READ_ID));
 if (error)
  return error;

 switch (param[0]) {
 case 129:
 case 131:
 case 130:
 case 128:
  if (variant_id)
   *variant_id = param[0];
  if (firmware_id)
   *firmware_id = param[1];
  return 0;
 }

 return -ENODEV;
}
