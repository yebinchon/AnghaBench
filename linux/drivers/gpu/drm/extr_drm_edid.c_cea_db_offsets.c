
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int const CEA_EXT ;
 int const DATA_BLOCK_CTA ;
 int ENOTSUPP ;
 int ERANGE ;

__attribute__((used)) static int
cea_db_offsets(const u8 *cea, int *start, int *end)
{
 if (cea[0] == DATA_BLOCK_CTA) {
  *start = 3;
  *end = *start + cea[2];
 } else if (cea[0] == CEA_EXT) {

  *start = 4;
  *end = cea[2];
  if (*end == 0)
   *end = 127;
  if (*end < 4 || *end > 127)
   return -ERANGE;
 } else {
  return -ENOTSUPP;
 }

 return 0;
}
