
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb_p (char,int) ;

__attribute__((used)) static void out_umc(char port, char wert)
{
 outb_p(port, 0x108);
 outb_p(wert, 0x109);
}
