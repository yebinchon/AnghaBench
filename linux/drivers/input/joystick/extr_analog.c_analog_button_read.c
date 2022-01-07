
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analog_port {unsigned char buttons; unsigned char mask; int gameport; } ;


 int ANALOG_SAITEK_DELAY ;
 int ANALOG_SAITEK_TIME ;
 int* analog_chf ;
 unsigned char gameport_read (int ) ;
 int gameport_time (int ,int ) ;
 int gameport_trigger (int ) ;
 int udelay (int ) ;

__attribute__((used)) static int analog_button_read(struct analog_port *port, char saitek, char chf)
{
 unsigned char u;
 int t = 1, i = 0;
 int strobe = gameport_time(port->gameport, ANALOG_SAITEK_TIME);

 u = gameport_read(port->gameport);

 if (!chf) {
  port->buttons = (~u >> 4) & 0xf;
  return 0;
 }

 port->buttons = 0;

 while ((~u & 0xf0) && (i < 16) && t) {
  port->buttons |= 1 << analog_chf[(~u >> 4) & 0xf];
  if (!saitek) return 0;
  udelay(ANALOG_SAITEK_DELAY);
  t = strobe;
  gameport_trigger(port->gameport);
  while (((u = gameport_read(port->gameport)) & port->mask) && t) t--;
  i++;
 }

 return -(!t || (i == 16));
}
