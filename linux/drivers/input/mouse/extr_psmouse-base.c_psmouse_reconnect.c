
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int __psmouse_reconnect (struct serio*,int) ;

__attribute__((used)) static int psmouse_reconnect(struct serio *serio)
{
 return __psmouse_reconnect(serio, 0);
}
