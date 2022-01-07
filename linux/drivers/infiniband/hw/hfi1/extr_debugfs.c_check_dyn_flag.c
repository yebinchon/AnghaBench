
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int CR_DYN_SHIFT ;
 scalar_t__ scnprintf (char*,int,char*,int,int,char const*,char*) ;

__attribute__((used)) static void check_dyn_flag(u64 scratch0, char *p, int size, int *used,
      int this_hfi, int hfi, u32 flag, const char *what)
{
 u32 mask;

 mask = flag << (hfi ? CR_DYN_SHIFT : 0);
 if (scratch0 & mask) {
  *used += scnprintf(p + *used, size - *used,
       "  0x%08x - HFI%d %s in use, %s device\n",
       mask, hfi, what,
       this_hfi == hfi ? "this" : "other");
 }
}
