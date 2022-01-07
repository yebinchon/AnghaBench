
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TXE_NUM_SDMA_ENGINES ;
 scalar_t__ likely (int) ;
 char** sdma_int_names ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static char *is_sdma_eng_name(char *buf, size_t bsize, unsigned int source)
{

 unsigned int what = source / TXE_NUM_SDMA_ENGINES;

 unsigned int which = source % TXE_NUM_SDMA_ENGINES;

 if (likely(what < 3))
  snprintf(buf, bsize, "%s%u", sdma_int_names[what], which);
 else
  snprintf(buf, bsize, "Invalid SDMA interrupt %u", source);
 return buf;
}
