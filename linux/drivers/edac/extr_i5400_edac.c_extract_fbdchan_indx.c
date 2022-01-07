
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int extract_fbdchan_indx(u32 x)
{
 return (x>>28) & 0x3;
}
