
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct layer2 {int flag; } ;


 int FLG_MOD128 ;
 int RR ;
 scalar_t__ test_bit (int ,int *) ;

inline int
IsRR(u_char *data, struct layer2 *l2)
{
 if (test_bit(FLG_MOD128, &l2->flag))
  return data[0] == RR;
 else
  return (data[0] & 0xf) == 1;
}
