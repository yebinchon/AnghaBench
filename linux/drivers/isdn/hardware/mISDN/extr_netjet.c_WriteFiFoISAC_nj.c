
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tiger_hw {int auxd; scalar_t__ base; } ;


 scalar_t__ NJ_AUXDATA ;
 scalar_t__ NJ_ISAC_OFF ;
 int outb (int,scalar_t__) ;
 int outsb (scalar_t__,int *,int) ;

__attribute__((used)) static void
WriteFiFoISAC_nj(void *p, u8 offset, u8 *data, int size)
{
 struct tiger_hw *card = p;

 card->auxd &= 0xfc;
 outb(card->auxd, card->base + NJ_AUXDATA);
 outsb(card->base + NJ_ISAC_OFF, data, size);
}
