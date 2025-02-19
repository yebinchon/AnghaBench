
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int DBG (char*,int,int,int,int) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static long read_counter(u32 dma_base)
{
 u32 pri_dma_base = dma_base, sec_dma_base = dma_base + 0x08;
 u8 cnt0, cnt1, cnt2, cnt3;
 long count = 0, last;
 int retry = 3;

 do {
  last = count;


  outb(0x20, pri_dma_base + 0x01);
  cnt0 = inb(pri_dma_base + 0x03);
  outb(0x21, pri_dma_base + 0x01);
  cnt1 = inb(pri_dma_base + 0x03);
  outb(0x20, sec_dma_base + 0x01);
  cnt2 = inb(sec_dma_base + 0x03);
  outb(0x21, sec_dma_base + 0x01);
  cnt3 = inb(sec_dma_base + 0x03);

  count = (cnt3 << 23) | (cnt2 << 15) | (cnt1 << 8) | cnt0;






 } while (retry-- && (((last ^ count) & 0x3fff8000) || last < count));

 DBG("cnt0[%02X] cnt1[%02X] cnt2[%02X] cnt3[%02X]\n",
    cnt0, cnt1, cnt2, cnt3);

 return count;
}
