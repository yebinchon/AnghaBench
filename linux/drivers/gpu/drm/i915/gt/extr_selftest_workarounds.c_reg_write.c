
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 reg_write(u32 old, u32 new, u32 rsvd)
{
 if (rsvd == 0x0000ffff) {
  old &= ~(new >> 16);
  old |= new & (new >> 16);
 } else {
  old &= ~rsvd;
  old |= new & rsvd;
 }

 return old;
}
