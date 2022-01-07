
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max3191x_chip {scalar_t__ mode; int undervolt1; int ignore_uv; int overtemp; int crc_error; int fault; } ;


 scalar_t__ STATUS_BYTE_DISABLED ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static bool max3191x_chip_is_faulting(struct max3191x_chip *max3191x,
          unsigned int chipnum)
{

 if (!max3191x->ignore_uv && test_bit(chipnum, max3191x->fault))
  return 1;

 if (max3191x->mode == STATUS_BYTE_DISABLED)
  return 0;

 return test_bit(chipnum, max3191x->crc_error) ||
        test_bit(chipnum, max3191x->overtemp) ||
        (!max3191x->ignore_uv &&
  test_bit(chipnum, max3191x->undervolt1));
}
