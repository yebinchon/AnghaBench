
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int pr_err (char*,scalar_t__) ;

__attribute__((used)) static inline u64 ZIP_MSIX_PBAX(u64 param1)
{
 if (param1 == 0)
  return 0x0000838000FF0000ull;
 pr_err("ZIP_MSIX_PBAX: %llu\n", param1);
 return 0;
}
