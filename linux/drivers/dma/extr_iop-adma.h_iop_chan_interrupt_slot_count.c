
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;



 int BUG () ;


 int iop3xx_aau_xor_slot_count (int ,int,int*) ;
 int iop_chan_memcpy_slot_count (int ,int*) ;

__attribute__((used)) static inline int
iop_chan_interrupt_slot_count(int *slots_per_op, struct iop_adma_chan *chan)
{
 switch (chan->device->id) {
 case 129:
 case 128:
  return iop_chan_memcpy_slot_count(0, slots_per_op);
 case 130:
  return iop3xx_aau_xor_slot_count(0, 2, slots_per_op);
 default:
  BUG();
 }
 return 0;
}
