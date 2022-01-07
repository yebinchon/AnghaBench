
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;
struct adi_port {int reads; int bad; } ;


 scalar_t__ adi_read (struct adi_port*) ;
 struct adi_port* gameport_get_drvdata (struct gameport*) ;

__attribute__((used)) static void adi_poll(struct gameport *gameport)
{
 struct adi_port *port = gameport_get_drvdata(gameport);

 port->bad -= adi_read(port);
 port->reads++;
}
