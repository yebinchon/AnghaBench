
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int serio; } ;
struct psmouse {TYPE_1__ ps2dev; } ;
struct byd_data {int touch; int abs_x; int abs_y; struct psmouse* psmouse; } ;


 int BYD_PAD_HEIGHT ;
 int BYD_PAD_WIDTH ;
 int byd_report_input (struct psmouse*) ;
 struct byd_data* from_timer (int ,struct timer_list*,int ) ;
 struct byd_data* priv ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;
 int timer ;

__attribute__((used)) static void byd_clear_touch(struct timer_list *t)
{
 struct byd_data *priv = from_timer(priv, t, timer);
 struct psmouse *psmouse = priv->psmouse;

 serio_pause_rx(psmouse->ps2dev.serio);
 priv->touch = 0;

 byd_report_input(psmouse);

 serio_continue_rx(psmouse->ps2dev.serio);






 priv->abs_x = BYD_PAD_WIDTH / 2;
 priv->abs_y = BYD_PAD_HEIGHT / 2;
}
