
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum spu2_cipher_type { ____Placeholder_spu2_cipher_type } spu2_cipher_type ;


 int SPU2_CIPHER_TYPE_LAST ;
 char** spu2_cipher_type_names ;

__attribute__((used)) static char *spu2_ciph_type_name(enum spu2_cipher_type cipher_type)
{
 if (cipher_type >= SPU2_CIPHER_TYPE_LAST)
  return "Reserved";
 return spu2_cipher_type_names[cipher_type];
}
