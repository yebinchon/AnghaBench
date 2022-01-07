
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_sg {unsigned int len; } ;


 int AES_BLOCK_SIZE ;
 int abs (long) ;

__attribute__((used)) static long int trim_sg_list(struct nx_sg *sg,
        struct nx_sg *end,
        unsigned int delta,
        unsigned int *nbytes)
{
 long int oplen;
 long int data_back;
 unsigned int is_delta = delta;

 while (delta && end > sg) {
  struct nx_sg *last = end - 1;

  if (last->len > delta) {
   last->len -= delta;
   delta = 0;
  } else {
   end--;
   delta -= last->len;
  }
 }






 oplen = (sg - end) * sizeof(struct nx_sg);
 if (is_delta) {
  data_back = (abs(oplen) / AES_BLOCK_SIZE) * sg->len;
  data_back = *nbytes - (data_back & ~(AES_BLOCK_SIZE - 1));
  *nbytes -= data_back;
 }

 return oplen;
}
