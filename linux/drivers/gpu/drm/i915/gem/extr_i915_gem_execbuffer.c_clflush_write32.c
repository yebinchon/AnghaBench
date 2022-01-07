
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int CLFLUSH_AFTER ;
 unsigned int CLFLUSH_BEFORE ;
 int clflushopt (int *) ;
 int mb () ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
{
 if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
  if (flushes & CLFLUSH_BEFORE) {
   clflushopt(addr);
   mb();
  }

  *addr = value;
  if (flushes & CLFLUSH_AFTER)
   clflushopt(addr);
 } else
  *addr = value;
}
