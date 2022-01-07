
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ test_bit_le (unsigned int,int *) ;

__attribute__((used)) static inline int log_test_bit(uint32_t *bs, unsigned bit)
{
 return test_bit_le(bit, bs) ? 1 : 0;
}
