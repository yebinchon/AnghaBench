
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (int const*) ;
 size_t MTHCA_CMD_STAT_OK ;



__attribute__((used)) static int mthca_status_to_errno(u8 status)
{
 static const int trans_table[] = {
  [131] = -148,
  [142] = -145,
  [141] = -149,
  [134] = -146,
  [138] = -153,
  [128] = -151,
  [133] = -147,
  [132] = -147,
  [137] = -153,
  [144] = -153,
  [143] = -150,
  [139] = -149,
  [136] = -150,
  [129] = -151,
  [130] = -154,
  [140] = -152,
  [135] = -147,
 };

 if (status >= ARRAY_SIZE(trans_table) ||
   (status != MTHCA_CMD_STAT_OK
    && trans_table[status] == 0))
  return -149;

 return trans_table[status];
}
