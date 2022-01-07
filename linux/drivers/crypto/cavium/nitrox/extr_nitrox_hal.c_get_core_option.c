
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AE_MAX_CORES ;


__attribute__((used)) static const char *get_core_option(u8 se_cores, u8 ae_cores)
{
 const char *option = "";

 if (ae_cores == AE_MAX_CORES) {
  switch (se_cores) {
  case 128:
   option = "60";
   break;
  case 40:
   option = "60s";
   break;
  }
 } else if (ae_cores == (AE_MAX_CORES / 2)) {
  option = "30";
 } else {
  option = "60i";
 }

 return option;
}
