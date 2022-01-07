
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2mult {int lock; int * ports; int mx_serio; } ;


 size_t PS2MULT_KBD_PORT ;
 int PS2MULT_SESSION_END ;
 int PS2MULT_SESSION_START ;
 int ps2mult_select_port (struct ps2mult*,int *) ;
 int serio_write (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ps2mult_reset(struct ps2mult *psm)
{
 unsigned long flags;

 spin_lock_irqsave(&psm->lock, flags);

 serio_write(psm->mx_serio, PS2MULT_SESSION_END);
 serio_write(psm->mx_serio, PS2MULT_SESSION_START);

 ps2mult_select_port(psm, &psm->ports[PS2MULT_KBD_PORT]);

 spin_unlock_irqrestore(&psm->lock, flags);
}
