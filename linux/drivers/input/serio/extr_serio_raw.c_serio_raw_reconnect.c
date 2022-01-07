
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw {int dummy; } ;
struct serio_driver {int dummy; } ;
struct serio {int dev; struct serio_driver* drv; } ;


 int dev_dbg (int *,char*) ;
 struct serio_raw* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static int serio_raw_reconnect(struct serio *serio)
{
 struct serio_raw *serio_raw = serio_get_drvdata(serio);
 struct serio_driver *drv = serio->drv;

 if (!drv || !serio_raw) {
  dev_dbg(&serio->dev,
   "reconnect request, but serio is disconnected, ignoring...\n");
  return -1;
 }





 return 0;
}
