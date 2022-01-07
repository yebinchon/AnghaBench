
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gf100_fifo {int dummy; } ;
__attribute__((used)) static inline int
gf100_fifo_engidx(struct gf100_fifo *fifo, u32 engn)
{
 switch (engn) {
 case 131 : engn = 0; break;
 case 128 : engn = 1; break;
 case 129 : engn = 2; break;
 case 130: engn = 3; break;
 case 133 : engn = 4; break;
 case 132 : engn = 5; break;
 default:
  return -1;
 }

 return engn;
}
