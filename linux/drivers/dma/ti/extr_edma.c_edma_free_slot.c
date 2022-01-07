
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {unsigned int num_slots; int slot_inuse; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 int clear_bit (unsigned int,int ) ;
 int dummy_paramset ;
 int edma_write_slot (struct edma_cc*,unsigned int,int *) ;

__attribute__((used)) static void edma_free_slot(struct edma_cc *ecc, unsigned slot)
{
 slot = EDMA_CHAN_SLOT(slot);
 if (slot >= ecc->num_slots)
  return;

 edma_write_slot(ecc, slot, &dummy_paramset);
 clear_bit(slot, ecc->slot_inuse);
}
