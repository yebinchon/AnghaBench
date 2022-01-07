
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gc {TYPE_1__* pd; } ;
struct TYPE_2__ {int port; } ;


 int GC_N64_CLOCK ;
 int GC_N64_DELAY ;
 int GC_N64_LENGTH ;
 int GC_N64_OUT ;
 int GC_N64_POWER_R ;
 int GC_N64_REQUEST_DATA ;
 int gc_n64_send_command (struct gc*,int ,int ) ;
 int gc_n64_send_stop_bit (struct gc*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned char parport_read_status (int ) ;
 int parport_write_data (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void gc_n64_read_packet(struct gc *gc, unsigned char *data)
{
 int i;
 unsigned long flags;





 local_irq_save(flags);
 gc_n64_send_command(gc, GC_N64_REQUEST_DATA, GC_N64_OUT);
 gc_n64_send_stop_bit(gc, GC_N64_OUT);
 local_irq_restore(flags);






 udelay(GC_N64_DELAY);





 for (i = 0; i < GC_N64_LENGTH; i++) {
  parport_write_data(gc->pd->port, GC_N64_POWER_R);
  udelay(2);
  data[i] = parport_read_status(gc->pd->port);
  parport_write_data(gc->pd->port, GC_N64_POWER_R | GC_N64_CLOCK);
  }







}
