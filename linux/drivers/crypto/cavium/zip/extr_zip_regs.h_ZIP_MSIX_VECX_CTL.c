
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int pr_err (char*,int) ;

__attribute__((used)) static inline u64 ZIP_MSIX_VECX_CTL(u64 param1)
{
 if (param1 <= 17)
  return 0x0000838000F00008ull + (param1 & 31) * 0x10ull;
 pr_err("ZIP_MSIX_VECX_CTL: %llu\n", param1);
 return 0;
}
