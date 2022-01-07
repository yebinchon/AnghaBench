
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct w6692_ch {scalar_t__ addr; } ;


 scalar_t__ inb (scalar_t__) ;

__attribute__((used)) static inline u8
ReadW6692B(struct w6692_ch *bc, u8 offset)
{
 return inb(bc->addr + offset);
}
