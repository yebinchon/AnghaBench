
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct ps2mult {int dummy; } ;


 int ps2mult_reset (struct ps2mult*) ;
 struct ps2mult* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static int ps2mult_reconnect(struct serio *serio)
{
 struct ps2mult *psm = serio_get_drvdata(serio);

 ps2mult_reset(psm);

 return 0;
}
