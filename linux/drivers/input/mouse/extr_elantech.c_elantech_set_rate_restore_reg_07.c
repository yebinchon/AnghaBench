
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct elantech_data* private; } ;
struct elantech_data {int reg_07; int (* original_set_rate ) (struct psmouse*,unsigned int) ;} ;


 scalar_t__ elantech_write_reg (struct psmouse*,int,int ) ;
 int psmouse_err (struct psmouse*,char*) ;
 int stub1 (struct psmouse*,unsigned int) ;

__attribute__((used)) static void elantech_set_rate_restore_reg_07(struct psmouse *psmouse,
  unsigned int rate)
{
 struct elantech_data *etd = psmouse->private;

 etd->original_set_rate(psmouse, rate);
 if (elantech_write_reg(psmouse, 0x07, etd->reg_07))
  psmouse_err(psmouse, "restoring reg_07 failed\n");
}
