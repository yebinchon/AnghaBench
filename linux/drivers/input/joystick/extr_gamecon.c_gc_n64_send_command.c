
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct gc {TYPE_1__* pd; } ;
struct TYPE_2__ {struct parport* port; } ;


 int GC_N64_DWS ;
 int GC_N64_LENGTH ;
 unsigned char GC_N64_POWER_W ;
 int parport_write_data (struct parport*,unsigned char) ;
 int udelay (int ) ;

__attribute__((used)) static void gc_n64_send_command(struct gc *gc, unsigned long cmd,
    unsigned char target)
{
 struct parport *port = gc->pd->port;
 int i;

 for (i = 0; i < GC_N64_LENGTH; i++) {
  unsigned char data = (cmd >> i) & 1 ? target : 0;
  parport_write_data(port, GC_N64_POWER_W | data);
  udelay(GC_N64_DWS);
 }
}
