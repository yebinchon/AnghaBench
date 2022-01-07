
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {int ps2dev; } ;


 int MAKE_PS2_CMD (int ,int,int ) ;
 int TP_READ_ID ;
 int TP_VARIANT_ALPS ;
 scalar_t__ ps2_command (int *,int*,int ) ;

__attribute__((used)) static bool alps_is_cs19_trackpoint(struct psmouse *psmouse)
{
 u8 param[2] = { 0 };

 if (ps2_command(&psmouse->ps2dev,
   param, MAKE_PS2_CMD(0, 2, TP_READ_ID)))
  return 0;







 return param[0] == TP_VARIANT_ALPS && ((param[1] & 0xf0) == 0x20);
}
