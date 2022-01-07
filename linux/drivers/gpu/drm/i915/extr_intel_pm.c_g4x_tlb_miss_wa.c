
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int max (int ,int) ;

__attribute__((used)) static unsigned int g4x_tlb_miss_wa(int fifo_size, int width, int cpp)
{
 int tlb_miss = fifo_size * 64 - width * cpp * 8;

 return max(0, tlb_miss);
}
