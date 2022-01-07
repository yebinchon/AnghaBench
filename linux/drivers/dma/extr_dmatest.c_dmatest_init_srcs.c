
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PATTERN_COPY ;
 int gen_src_value (unsigned int,int) ;

__attribute__((used)) static void dmatest_init_srcs(u8 **bufs, unsigned int start, unsigned int len,
  unsigned int buf_size, bool is_memset)
{
 unsigned int i;
 u8 *buf;

 for (; (buf = *bufs); bufs++) {
  for (i = 0; i < start; i++)
   buf[i] = gen_src_value(i, is_memset);
  for ( ; i < start + len; i++)
   buf[i] = gen_src_value(i, is_memset) | PATTERN_COPY;
  for ( ; i < buf_size; i++)
   buf[i] = gen_src_value(i, is_memset);
  buf++;
 }
}
