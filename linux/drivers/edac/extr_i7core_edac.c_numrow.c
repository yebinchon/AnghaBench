
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




__attribute__((used)) static inline int numrow(u32 row)
{
 static const int rows[] = {
  1 << 12, 1 << 13, 1 << 14, 1 << 15,
  1 << 16, -128, -128, -128,
 };

 return rows[row & 0x7];
}
