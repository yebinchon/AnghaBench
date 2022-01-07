
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw {int bads; int reads; } ;
struct gameport {int dummy; } ;


 struct sw* gameport_get_drvdata (struct gameport*) ;
 scalar_t__ sw_read (struct sw*) ;

__attribute__((used)) static void sw_poll(struct gameport *gameport)
{
 struct sw *sw = gameport_get_drvdata(gameport);

 sw->reads++;
 if (sw_read(sw))
  sw->bads++;
}
