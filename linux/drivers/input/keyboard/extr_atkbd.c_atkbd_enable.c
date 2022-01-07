
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serio; } ;
struct atkbd {int enabled; TYPE_1__ ps2dev; } ;


 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;

__attribute__((used)) static inline void atkbd_enable(struct atkbd *atkbd)
{
 serio_pause_rx(atkbd->ps2dev.serio);
 atkbd->enabled = 1;
 serio_continue_rx(atkbd->ps2dev.serio);
}
