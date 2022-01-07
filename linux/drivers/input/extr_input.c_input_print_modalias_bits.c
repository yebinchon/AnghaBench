
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BIT_MASK (int) ;
 size_t BIT_WORD (int) ;
 int max (int,int ) ;
 scalar_t__ snprintf (char*,int ,char*,int) ;

__attribute__((used)) static int input_print_modalias_bits(char *buf, int size,
         char name, unsigned long *bm,
         unsigned int min_bit, unsigned int max_bit)
{
 int len = 0, i;

 len += snprintf(buf, max(size, 0), "%c", name);
 for (i = min_bit; i < max_bit; i++)
  if (bm[BIT_WORD(i)] & BIT_MASK(i))
   len += snprintf(buf + len, max(size - len, 0), "%X,", i);
 return len;
}
