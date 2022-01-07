
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w6692_hw {int name; } ;


 int ReadW6692 (struct w6692_hw*,int ) ;
 int * W6692Ver ;
 int W_D_RBCH ;
 int pr_notice (char*,int ,int ) ;

__attribute__((used)) static void
W6692Version(struct w6692_hw *card)
{
 int val;

 val = ReadW6692(card, W_D_RBCH);
 pr_notice("%s: Winbond W6692 version: %s\n", card->name,
    W6692Ver[(val >> 6) & 3]);
}
