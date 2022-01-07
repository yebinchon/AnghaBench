
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int BIT_WORD (unsigned int) ;
 unsigned long ULONG_MAX ;
 int test_and_set_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static unsigned int dmz_set_bits(unsigned long *bitmap,
     unsigned int bit, unsigned int nr_bits)
{
 unsigned long *addr;
 unsigned int end = bit + nr_bits;
 unsigned int n = 0;

 while (bit < end) {
  if (((bit & (BITS_PER_LONG - 1)) == 0) &&
      ((end - bit) >= BITS_PER_LONG)) {

   addr = bitmap + BIT_WORD(bit);
   if (*addr == 0) {
    *addr = ULONG_MAX;
    n += BITS_PER_LONG;
    bit += BITS_PER_LONG;
    continue;
   }
  }

  if (!test_and_set_bit(bit, bitmap))
   n++;
  bit++;
 }

 return n;
}
