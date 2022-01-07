
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {unsigned int va; int vs; int flag; } ;


 int FLG_MOD128 ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static unsigned int
legalnr(struct layer2 *l2, unsigned int nr)
{
 if (test_bit(FLG_MOD128, &l2->flag))
  return ((nr - l2->va) % 128) <= ((l2->vs - l2->va) % 128);
 else
  return ((nr - l2->va) % 8) <= ((l2->vs - l2->va) % 8);
}
