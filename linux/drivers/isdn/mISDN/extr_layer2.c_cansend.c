
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int vs; int va; unsigned int window; int flag; } ;


 int FLG_MOD128 ;
 int FLG_PEER_BUSY ;
 scalar_t__ test_bit (int ,int *) ;

inline unsigned int
cansend(struct layer2 *l2)
{
 unsigned int p1;

 if (test_bit(FLG_MOD128, &l2->flag))
  p1 = (l2->vs - l2->va) % 128;
 else
  p1 = (l2->vs - l2->va) % 8;
 return (p1 < l2->window) && !test_bit(FLG_PEER_BUSY, &l2->flag);
}
