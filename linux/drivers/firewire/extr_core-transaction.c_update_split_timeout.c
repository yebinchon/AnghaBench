
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int split_timeout_hi; int split_timeout_lo; unsigned int split_timeout_cycles; int split_timeout_jiffies; } ;


 int DIV_ROUND_UP (unsigned int,int) ;
 unsigned int HZ ;
 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void update_split_timeout(struct fw_card *card)
{
 unsigned int cycles;

 cycles = card->split_timeout_hi * 8000 + (card->split_timeout_lo >> 19);


 cycles = clamp(cycles, 800u, 3u * 8000u);

 card->split_timeout_cycles = cycles;
 card->split_timeout_jiffies = DIV_ROUND_UP(cycles * HZ, 8000);
}
