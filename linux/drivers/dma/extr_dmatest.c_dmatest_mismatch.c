
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {char* comm; } ;


 int PATTERN_COPY ;
 int PATTERN_OVERWRITE ;
 int PATTERN_SRC ;
 TYPE_1__* current ;
 int gen_inv_idx (unsigned int,int) ;
 int pr_warn (char*,char const*,unsigned int,int,int) ;

__attribute__((used)) static void dmatest_mismatch(u8 actual, u8 pattern, unsigned int index,
  unsigned int counter, bool is_srcbuf, bool is_memset)
{
 u8 diff = actual ^ pattern;
 u8 expected = pattern | gen_inv_idx(counter, is_memset);
 const char *thread_name = current->comm;

 if (is_srcbuf)
  pr_warn("%s: srcbuf[0x%x] overwritten! Expected %02x, got %02x\n",
   thread_name, index, expected, actual);
 else if ((pattern & PATTERN_COPY)
   && (diff & (PATTERN_COPY | PATTERN_OVERWRITE)))
  pr_warn("%s: dstbuf[0x%x] not copied! Expected %02x, got %02x\n",
   thread_name, index, expected, actual);
 else if (diff & PATTERN_SRC)
  pr_warn("%s: dstbuf[0x%x] was copied! Expected %02x, got %02x\n",
   thread_name, index, expected, actual);
 else
  pr_warn("%s: dstbuf[0x%x] mismatch! Expected %02x, got %02x\n",
   thread_name, index, expected, actual);
}
