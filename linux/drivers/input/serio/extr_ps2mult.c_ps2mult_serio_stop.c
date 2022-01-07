
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2mult_port* port_data; int parent; } ;
struct ps2mult_port {int registered; } ;
struct ps2mult {int lock; } ;


 struct ps2mult* serio_get_drvdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ps2mult_serio_stop(struct serio *serio)
{
 struct ps2mult *psm = serio_get_drvdata(serio->parent);
 struct ps2mult_port *port = serio->port_data;
 unsigned long flags;

 spin_lock_irqsave(&psm->lock, flags);
 port->registered = 0;
 spin_unlock_irqrestore(&psm->lock, flags);
}
