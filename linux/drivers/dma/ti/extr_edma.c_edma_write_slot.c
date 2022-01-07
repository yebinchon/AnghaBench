
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edmacc_param {int dummy; } ;
struct edma_cc {unsigned int num_slots; scalar_t__ base; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 scalar_t__ PARM_OFFSET (unsigned int) ;
 int PARM_SIZE ;
 int memcpy_toio (scalar_t__,struct edmacc_param const*,int ) ;

__attribute__((used)) static void edma_write_slot(struct edma_cc *ecc, unsigned slot,
       const struct edmacc_param *param)
{
 slot = EDMA_CHAN_SLOT(slot);
 if (slot >= ecc->num_slots)
  return;
 memcpy_toio(ecc->base + PARM_OFFSET(slot), param, PARM_SIZE);
}
