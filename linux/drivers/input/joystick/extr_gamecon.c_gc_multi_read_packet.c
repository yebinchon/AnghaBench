
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gc {TYPE_1__* pd; } ;
struct TYPE_2__ {int port; } ;


 int parport_read_status (int ) ;
 int parport_write_data (int ,int) ;

__attribute__((used)) static void gc_multi_read_packet(struct gc *gc, int length, unsigned char *data)
{
 int i;

 for (i = 0; i < length; i++) {
  parport_write_data(gc->pd->port, ~(1 << i));
  data[i] = parport_read_status(gc->pd->port) ^ 0x7f;
 }
}
