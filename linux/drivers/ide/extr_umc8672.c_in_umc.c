
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb_p (int) ;
 int outb_p (char,int) ;

__attribute__((used)) static inline u8 in_umc(char port)
{
 outb_p(port, 0x108);
 return inb_p(0x109);
}
