
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bkey {int dummy; } ;


 int KEY_SIZE (struct bkey*) ;
 int PAGE_SECTORS ;
 unsigned int ilog2 (int) ;

__attribute__((used)) static unsigned int btree_order(struct bkey *k)
{
 return ilog2(KEY_SIZE(k) / PAGE_SECTORS ?: 1);
}
