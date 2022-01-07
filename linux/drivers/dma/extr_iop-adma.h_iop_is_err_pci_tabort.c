
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iop_adma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int id; } ;




 int test_bit (int,unsigned long*) ;

__attribute__((used)) static inline int
iop_is_err_pci_tabort(unsigned long status, struct iop_adma_chan *chan)
{
 switch (chan->device->id) {
 case 129:
 case 128:
  return test_bit(2, &status);
 default:
  return 0;
 }
}
