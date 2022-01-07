
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w6692_hw {int dummy; } ;


 int W_D_CTL ;
 int W_D_CTL_SRST ;
 int WriteW6692 (struct w6692_hw*,int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void
reset_w6692(struct w6692_hw *card)
{
 WriteW6692(card, W_D_CTL, W_D_CTL_SRST);
 mdelay(10);
 WriteW6692(card, W_D_CTL, 0);
}
