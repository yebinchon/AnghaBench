
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ams_delta_serio* port_data; } ;
struct ams_delta_serio {int vcc; } ;


 int regulator_enable (int ) ;

__attribute__((used)) static int ams_delta_serio_open(struct serio *serio)
{
 struct ams_delta_serio *priv = serio->port_data;


 return regulator_enable(priv->vcc);
}
