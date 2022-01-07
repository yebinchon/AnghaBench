
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edmacc_param {int dummy; } ;
struct edma_cc {unsigned int num_slots; scalar_t__ base; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 int EINVAL ;
 scalar_t__ PARM_OFFSET (unsigned int) ;
 int PARM_SIZE ;
 int memcpy_fromio (struct edmacc_param*,scalar_t__,int ) ;

__attribute__((used)) static int edma_read_slot(struct edma_cc *ecc, unsigned slot,
      struct edmacc_param *param)
{
 slot = EDMA_CHAN_SLOT(slot);
 if (slot >= ecc->num_slots)
  return -EINVAL;
 memcpy_fromio(param, ecc->base + PARM_OFFSET(slot), PARM_SIZE);

 return 0;
}
