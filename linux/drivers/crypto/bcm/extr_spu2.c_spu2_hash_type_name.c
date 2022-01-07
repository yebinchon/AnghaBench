
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum spu2_hash_type { ____Placeholder_spu2_hash_type } spu2_hash_type ;


 int SPU2_HASH_TYPE_LAST ;
 char** spu2_hash_type_names ;

__attribute__((used)) static char *spu2_hash_type_name(enum spu2_hash_type hash_type)
{
 if (hash_type >= SPU2_HASH_TYPE_LAST)
  return "Reserved";
 return spu2_hash_type_names[hash_type];
}
