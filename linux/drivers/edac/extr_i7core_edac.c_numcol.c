
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




__attribute__((used)) static inline int numcol(u32 col)
{
 static const int cols[] = {
  1 << 10, 1 << 11, 1 << 12, -128,
 };
 return cols[col & 0x3];
}
