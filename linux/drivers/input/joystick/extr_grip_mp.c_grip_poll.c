
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grip_mp {TYPE_1__** port; } ;
struct gameport {int dummy; } ;
struct TYPE_2__ {scalar_t__ dirty; } ;


 int IO_DONE ;
 int IO_GOT_PACKET ;
 int IO_RETRY ;
 struct grip_mp* gameport_get_drvdata (struct gameport*) ;
 int get_and_decode_packet (struct grip_mp*,int) ;
 int report_slot (struct grip_mp*,int) ;

__attribute__((used)) static void grip_poll(struct gameport *gameport)
{
 struct grip_mp *grip = gameport_get_drvdata(gameport);
 int i, npkts, flags;

 for (npkts = 0; npkts < 4; npkts++) {
  flags = IO_RETRY;
  for (i = 0; i < 32; i++) {
   flags = get_and_decode_packet(grip, flags);
   if ((flags & IO_GOT_PACKET) || !(flags & IO_RETRY))
    break;
  }
  if (flags & IO_DONE)
   break;
 }

 for (i = 0; i < 4; i++)
  if (grip->port[i]->dirty)
   report_slot(grip, i);
}
