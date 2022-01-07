
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STEDMA40_PSIZE_LOG_1 ;
 int STEDMA40_PSIZE_PHY_1 ;

__attribute__((used)) static int d40_psize_2_burst_size(bool is_log, int psize)
{
 if (is_log) {
  if (psize == STEDMA40_PSIZE_LOG_1)
   return 1;
 } else {
  if (psize == STEDMA40_PSIZE_PHY_1)
   return 1;
 }

 return 2 << psize;
}
