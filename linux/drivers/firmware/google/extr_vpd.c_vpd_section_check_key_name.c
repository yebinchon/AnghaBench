
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;


 int VPD_FAIL ;
 int VPD_OK ;
 int isalnum (int) ;

__attribute__((used)) static int vpd_section_check_key_name(const u8 *key, s32 key_len)
{
 int c;

 while (key_len-- > 0) {
  c = *key++;

  if (!isalnum(c) && c != '_')
   return VPD_FAIL;
 }

 return VPD_OK;
}
