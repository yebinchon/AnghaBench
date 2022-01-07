
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int pr_err (char*,int) ;

__attribute__((used)) static inline u64 ZIP_COREX_BIST_STATUS(u64 param1)
{
 if (param1 <= 1)
  return 0x0520ull + (param1 & 1) * 0x8ull;
 pr_err("ZIP_COREX_BIST_STATUS: %llu\n", param1);
 return 0;
}
