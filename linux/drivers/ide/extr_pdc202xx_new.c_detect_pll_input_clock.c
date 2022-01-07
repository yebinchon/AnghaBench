
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ktime_t ;


 int DBG (char*,long,...) ;
 int inb (unsigned long) ;
 int ktime_get () ;
 long ktime_us_delta (int ,int ) ;
 int mdelay (int) ;
 int outb (int,unsigned long) ;
 long read_counter (unsigned long) ;

__attribute__((used)) static long detect_pll_input_clock(unsigned long dma_base)
{
 ktime_t start_time, end_time;
 long start_count, end_count;
 long pll_input, usec_elapsed;
 u8 scr1;

 start_count = read_counter(dma_base);
 start_time = ktime_get();


 outb(0x01, dma_base + 0x01);
 scr1 = inb(dma_base + 0x03);
 DBG("scr1[%02X]\n", scr1);
 outb(scr1 | 0x40, dma_base + 0x03);


 mdelay(10);

 end_count = read_counter(dma_base);
 end_time = ktime_get();


 outb(0x01, dma_base + 0x01);
 scr1 = inb(dma_base + 0x03);
 DBG("scr1[%02X]\n", scr1);
 outb(scr1 & ~0x40, dma_base + 0x03);





 usec_elapsed = ktime_us_delta(end_time, start_time);
 pll_input = ((start_count - end_count) & 0x3fffffff) / 10 *
  (10000000 / usec_elapsed);

 DBG("start[%ld] end[%ld]\n", start_count, end_count);

 return pll_input;
}
