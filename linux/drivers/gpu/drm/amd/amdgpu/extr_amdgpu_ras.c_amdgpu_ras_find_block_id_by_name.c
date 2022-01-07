
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ras_block_str (int) ;
 int ras_block_string ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int amdgpu_ras_find_block_id_by_name(const char *name, int *block_id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ras_block_string); i++) {
  *block_id = i;
  if (strcmp(name, ras_block_str(i)) == 0)
   return 0;
 }
 return -EINVAL;
}
