
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LM3532_NUM_IMP_VALS ;
 int* als_imp_table ;

__attribute__((used)) static int lm3532_get_als_imp_index(int als_imped)
{
 int i;

 if (als_imped > als_imp_table[1])
  return 0;

 if (als_imped < als_imp_table[LM3532_NUM_IMP_VALS - 1])
  return LM3532_NUM_IMP_VALS - 1;

 for (i = 1; i < LM3532_NUM_IMP_VALS; i++) {
  if (als_imped == als_imp_table[i])
   return i;


  if (als_imped < als_imp_table[i - 1] &&
      als_imped > als_imp_table[i]) {
   if (als_imped - als_imp_table[i - 1] <
       als_imp_table[i] - als_imped)
    return i + 1;
   else
    return i;
  }
 }

 return -EINVAL;
}
