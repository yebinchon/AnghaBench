
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int A; int B; } ;
struct layer2 {int sapi; int tei; TYPE_1__ addr; int flag; } ;


 int FLG_LAPD ;
 int FLG_LAPD_NET ;
 int FLG_ORIG ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
sethdraddr(struct layer2 *l2, u_char *header, int rsp)
{
 u_char *ptr = header;
 int crbit = rsp;

 if (test_bit(FLG_LAPD, &l2->flag)) {
  if (test_bit(FLG_LAPD_NET, &l2->flag))
   crbit = !crbit;
  *ptr++ = (l2->sapi << 2) | (crbit ? 2 : 0);
  *ptr++ = (l2->tei << 1) | 1;
  return 2;
 } else {
  if (test_bit(FLG_ORIG, &l2->flag))
   crbit = !crbit;
  if (crbit)
   *ptr++ = l2->addr.B;
  else
   *ptr++ = l2->addr.A;
  return 1;
 }
}
