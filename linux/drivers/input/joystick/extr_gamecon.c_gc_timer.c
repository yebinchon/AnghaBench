
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct gc {int timer; scalar_t__* pad_count; } ;


 size_t GC_DDR ;
 size_t GC_MULTI ;
 size_t GC_MULTI2 ;
 size_t GC_N64 ;
 size_t GC_NES ;
 size_t GC_PSX ;
 scalar_t__ GC_REFRESH_TIME ;
 size_t GC_SNES ;
 size_t GC_SNESMOUSE ;
 struct gc* from_timer (int ,struct timer_list*,int ) ;
 struct gc* gc ;
 int gc_multi_process_packet (struct gc*) ;
 int gc_n64_process_packet (struct gc*) ;
 int gc_nes_process_packet (struct gc*) ;
 int gc_psx_process_packet (struct gc*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer ;

__attribute__((used)) static void gc_timer(struct timer_list *t)
{
 struct gc *gc = from_timer(gc, t, timer);





 if (gc->pad_count[GC_N64])
  gc_n64_process_packet(gc);





 if (gc->pad_count[GC_NES] ||
     gc->pad_count[GC_SNES] ||
     gc->pad_count[GC_SNESMOUSE]) {
  gc_nes_process_packet(gc);
 }





 if (gc->pad_count[GC_MULTI] || gc->pad_count[GC_MULTI2])
  gc_multi_process_packet(gc);





 if (gc->pad_count[GC_PSX] || gc->pad_count[GC_DDR])
  gc_psx_process_packet(gc);

 mod_timer(&gc->timer, jiffies + GC_REFRESH_TIME);
}
