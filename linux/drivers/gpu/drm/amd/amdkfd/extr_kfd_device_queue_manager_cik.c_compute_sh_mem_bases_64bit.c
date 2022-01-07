
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PRIVATE_BASE (unsigned int) ;
 int SHARED_BASE (unsigned int) ;
 int WARN_ON (int) ;

__attribute__((used)) static uint32_t compute_sh_mem_bases_64bit(unsigned int top_address_nybble)
{
 WARN_ON((top_address_nybble & 1) || top_address_nybble > 0xE ||
  top_address_nybble == 0);

 return PRIVATE_BASE(top_address_nybble << 12) |
   SHARED_BASE(top_address_nybble << 12);
}
