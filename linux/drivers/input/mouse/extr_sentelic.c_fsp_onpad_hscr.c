
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct fsp_data* private; } ;
struct fsp_data {int hscroll; } ;


 int EIO ;
 int FSP_BIT_EN_MSID6 ;
 int FSP_BIT_EN_MSID7 ;
 int FSP_BIT_EN_MSID8 ;
 int FSP_BIT_FIX_HSCR ;
 int FSP_BIT_ONPAD_ENABLE ;
 int FSP_REG_ONPAD_CTL ;
 int FSP_REG_SYSCTL5 ;
 scalar_t__ fsp_reg_read (struct psmouse*,int ,int*) ;
 scalar_t__ fsp_reg_write (struct psmouse*,int ,int) ;

__attribute__((used)) static int fsp_onpad_hscr(struct psmouse *psmouse, bool enable)
{
 struct fsp_data *pad = psmouse->private;
 int val, v2;

 if (fsp_reg_read(psmouse, FSP_REG_ONPAD_CTL, &val))
  return -EIO;

 if (fsp_reg_read(psmouse, FSP_REG_SYSCTL5, &v2))
  return -EIO;

 pad->hscroll = enable;

 if (enable) {
  val |= (FSP_BIT_FIX_HSCR | FSP_BIT_ONPAD_ENABLE);
  v2 |= FSP_BIT_EN_MSID6;
 } else {
  val &= ~FSP_BIT_FIX_HSCR;
  v2 &= ~(FSP_BIT_EN_MSID6 | FSP_BIT_EN_MSID7 | FSP_BIT_EN_MSID8);
 }

 if (fsp_reg_write(psmouse, FSP_REG_ONPAD_CTL, val))
  return -EIO;


 if (fsp_reg_write(psmouse, FSP_REG_SYSCTL5, v2))
  return -EIO;

 return 0;
}
