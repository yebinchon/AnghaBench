
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int current_tlabel; unsigned long long tlabel_mask; } ;


 int EBUSY ;

__attribute__((used)) static int allocate_tlabel(struct fw_card *card)
{
 int tlabel;

 tlabel = card->current_tlabel;
 while (card->tlabel_mask & (1ULL << tlabel)) {
  tlabel = (tlabel + 1) & 0x3f;
  if (tlabel == card->current_tlabel)
   return -EBUSY;
 }

 card->current_tlabel = (tlabel + 1) & 0x3f;
 card->tlabel_mask |= 1ULL << tlabel;

 return tlabel;
}
