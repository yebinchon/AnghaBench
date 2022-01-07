
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int * absbit; TYPE_1__* absinfo; } ;
struct TYPE_2__ {scalar_t__ fuzz; } ;


 int BIT_MASK (unsigned int) ;
 size_t BIT_WORD (unsigned int) ;
 scalar_t__ test_bit (unsigned int,int *) ;

__attribute__((used)) static void copy_abs(struct input_dev *dev, unsigned int dst, unsigned int src)
{
 if (dev->absinfo && test_bit(src, dev->absbit)) {
  dev->absinfo[dst] = dev->absinfo[src];
  dev->absinfo[dst].fuzz = 0;
  dev->absbit[BIT_WORD(dst)] |= BIT_MASK(dst);
 }
}
