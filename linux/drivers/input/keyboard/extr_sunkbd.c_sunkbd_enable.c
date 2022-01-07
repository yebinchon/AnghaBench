
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunkbd {int enabled; int serio; } ;


 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;

__attribute__((used)) static void sunkbd_enable(struct sunkbd *sunkbd, bool enable)
{
 serio_pause_rx(sunkbd->serio);
 sunkbd->enabled = enable;
 serio_continue_rx(sunkbd->serio);
}
