
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ V2M_MAX_SPI ;
 scalar_t__ V2M_MIN_SPI ;
 int pr_err (char*,scalar_t__,...) ;

__attribute__((used)) static bool is_msi_spi_valid(u32 base, u32 num)
{
 if (base < V2M_MIN_SPI) {
  pr_err("Invalid MSI base SPI (base:%u)\n", base);
  return 0;
 }

 if ((num == 0) || (base + num > V2M_MAX_SPI)) {
  pr_err("Number of SPIs (%u) exceed maximum (%u)\n",
         num, V2M_MAX_SPI - V2M_MIN_SPI + 1);
  return 0;
 }

 return 1;
}
