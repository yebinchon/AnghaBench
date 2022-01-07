
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps2dev {TYPE_1__* serio; } ;
struct atkbd {struct ps2dev ps2dev; } ;
struct TYPE_2__ {int phys; int dev; } ;


 int ATKBD_CMD_RESET_DIS ;
 int dev_err (int *,char*,int ) ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static void atkbd_deactivate(struct atkbd *atkbd)
{
 struct ps2dev *ps2dev = &atkbd->ps2dev;

 if (ps2_command(ps2dev, ((void*)0), ATKBD_CMD_RESET_DIS))
  dev_err(&ps2dev->serio->dev,
   "Failed to deactivate keyboard on %s\n",
   ps2dev->serio->phys);
}
