
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int EIO ;
 int FSP_REG_TMOD_STATUS ;
 int fsp_reg_read (struct psmouse*,int ,int*) ;

__attribute__((used)) static int fsp_get_buttons(struct psmouse *psmouse, int *btn)
{
 static const int buttons[] = {
  0x16,
  0x06,
  0x04,
  0x02,
 };
 int val;

 if (fsp_reg_read(psmouse, FSP_REG_TMOD_STATUS, &val) == -1)
  return -EIO;

 *btn = buttons[(val & 0x30) >> 4];
 return 0;
}
