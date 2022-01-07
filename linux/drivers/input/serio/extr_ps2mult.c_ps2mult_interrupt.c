
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; } ;
struct ps2mult_port {int serio; scalar_t__ registered; } ;
struct ps2mult {int escape; int lock; struct ps2mult_port* in_port; struct ps2mult_port* ports; struct ps2mult_port* out_port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;


 size_t PS2MULT_KBD_PORT ;

 size_t PS2MULT_MOUSE_PORT ;



 int dev_dbg (int *,char*,...) ;
 struct ps2mult* serio_get_drvdata (struct serio*) ;
 int serio_interrupt (int ,unsigned char,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ps2mult_interrupt(struct serio *serio,
         unsigned char data, unsigned int dfl)
{
 struct ps2mult *psm = serio_get_drvdata(serio);
 struct ps2mult_port *in_port;
 unsigned long flags;

 dev_dbg(&serio->dev, "Received %02x flags %02x\n", data, dfl);

 spin_lock_irqsave(&psm->lock, flags);

 if (psm->escape) {
  psm->escape = 0;
  in_port = psm->in_port;
  if (in_port->registered)
   serio_interrupt(in_port->serio, data, dfl);
  goto out;
 }

 switch (data) {
 case 132:
  dev_dbg(&serio->dev, "ESCAPE\n");
  psm->escape = 1;
  break;

 case 133:
  dev_dbg(&serio->dev, "BSYNC\n");
  psm->in_port = psm->out_port;
  break;

 case 128:
  dev_dbg(&serio->dev, "SS\n");
  break;

 case 129:
  dev_dbg(&serio->dev, "SE\n");
  break;

 case 131:
  dev_dbg(&serio->dev, "KB\n");
  psm->in_port = &psm->ports[PS2MULT_KBD_PORT];
  break;

 case 130:
  dev_dbg(&serio->dev, "MS\n");
  psm->in_port = &psm->ports[PS2MULT_MOUSE_PORT];
  break;

 default:
  in_port = psm->in_port;
  if (in_port->registered)
   serio_interrupt(in_port->serio, data, dfl);
  break;
 }

 out:
 spin_unlock_irqrestore(&psm->lock, flags);
 return IRQ_HANDLED;
}
