
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {int dummy; } ;
struct serio {int dev; struct serio_driver* drv; } ;
struct atkbd {scalar_t__ set; int mutex; scalar_t__ write; scalar_t__ emul; scalar_t__ xl_bit; int softrepeat; int extra; } ;


 int atkbd_activate (struct atkbd*) ;
 int atkbd_disable (struct atkbd*) ;
 int atkbd_enable (struct atkbd*) ;
 scalar_t__ atkbd_probe (struct atkbd*) ;
 scalar_t__ atkbd_select_set (struct atkbd*,scalar_t__,int ) ;
 int atkbd_set_leds (struct atkbd*) ;
 int atkbd_set_repeat_rate (struct atkbd*) ;
 int dev_dbg (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct atkbd* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static int atkbd_reconnect(struct serio *serio)
{
 struct atkbd *atkbd = serio_get_drvdata(serio);
 struct serio_driver *drv = serio->drv;
 int retval = -1;

 if (!atkbd || !drv) {
  dev_dbg(&serio->dev,
   "reconnect request, but serio is disconnected, ignoring...\n");
  return -1;
 }

 mutex_lock(&atkbd->mutex);

 atkbd_disable(atkbd);

 if (atkbd->write) {
  if (atkbd_probe(atkbd))
   goto out;

  if (atkbd->set != atkbd_select_set(atkbd, atkbd->set, atkbd->extra))
   goto out;
  atkbd_set_leds(atkbd);
  if (!atkbd->softrepeat)
   atkbd_set_repeat_rate(atkbd);

 }





 atkbd->xl_bit = 0;
 atkbd->emul = 0;

 atkbd_enable(atkbd);
 if (atkbd->write)
  atkbd_activate(atkbd);

 retval = 0;

 out:
 mutex_unlock(&atkbd->mutex);
 return retval;
}
