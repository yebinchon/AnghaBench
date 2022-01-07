
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* serio; } ;
struct psmouse {TYPE_5__ ps2dev; struct hgpk_data* private; } ;
struct hgpk_data {int powered; } ;
struct TYPE_6__ {scalar_t__ event; } ;
struct TYPE_7__ {TYPE_1__ power_state; } ;
struct TYPE_8__ {TYPE_2__ power; } ;
struct TYPE_9__ {TYPE_3__ dev; } ;


 scalar_t__ PM_EVENT_ON ;
 int hgpk_reset_device (struct psmouse*,int) ;
 int olpc_board (int) ;
 scalar_t__ olpc_board_at_least (int ) ;

__attribute__((used)) static int hgpk_reconnect(struct psmouse *psmouse)
{
 struct hgpk_data *priv = psmouse->private;






 if (olpc_board_at_least(olpc_board(0xb2)))
  if (psmouse->ps2dev.serio->dev.power.power_state.event !=
    PM_EVENT_ON)
   return 0;

 priv->powered = 1;
 return hgpk_reset_device(psmouse, 0);
}
