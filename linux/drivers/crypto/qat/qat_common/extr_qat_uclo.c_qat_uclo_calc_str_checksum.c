
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int qat_uclo_calc_checksum (unsigned int,int ) ;

__attribute__((used)) static unsigned int qat_uclo_calc_str_checksum(char *ptr, int num)
{
 unsigned int chksum = 0;

 if (ptr)
  while (num--)
   chksum = qat_uclo_calc_checksum(chksum, *ptr++);
 return chksum;
}
