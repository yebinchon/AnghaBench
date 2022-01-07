
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {int num_channels; int num_slots; int id; int slot_inuse; scalar_t__ chmap_exist; } ;


 int EBUSY ;
 int EDMA_CHAN_SLOT (int) ;
 int EDMA_CTLR_CHAN (int ,int) ;
 int EDMA_SLOT_ANY ;
 int EINVAL ;
 int ENOMEM ;
 int dummy_paramset ;
 int edma_write_slot (struct edma_cc*,int,int *) ;
 int find_next_zero_bit (int ,int,int) ;
 scalar_t__ test_and_set_bit (int,int ) ;

__attribute__((used)) static int edma_alloc_slot(struct edma_cc *ecc, int slot)
{
 if (slot >= 0) {
  slot = EDMA_CHAN_SLOT(slot);

  if (ecc->chmap_exist && slot < ecc->num_channels)
   slot = EDMA_SLOT_ANY;
 }

 if (slot < 0) {
  if (ecc->chmap_exist)
   slot = 0;
  else
   slot = ecc->num_channels;
  for (;;) {
   slot = find_next_zero_bit(ecc->slot_inuse,
        ecc->num_slots,
        slot);
   if (slot == ecc->num_slots)
    return -ENOMEM;
   if (!test_and_set_bit(slot, ecc->slot_inuse))
    break;
  }
 } else if (slot >= ecc->num_slots) {
  return -EINVAL;
 } else if (test_and_set_bit(slot, ecc->slot_inuse)) {
  return -EBUSY;
 }

 edma_write_slot(ecc, slot, &dummy_paramset);

 return EDMA_CTLR_CHAN(ecc->id, slot);
}
