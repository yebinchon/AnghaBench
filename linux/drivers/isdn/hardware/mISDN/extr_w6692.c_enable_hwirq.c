
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w6692_hw {int imask; } ;


 int W_IMASK ;
 int WriteW6692 (struct w6692_hw*,int ,int ) ;

__attribute__((used)) static void
enable_hwirq(struct w6692_hw *card)
{
 WriteW6692(card, W_IMASK, card->imask);
}
