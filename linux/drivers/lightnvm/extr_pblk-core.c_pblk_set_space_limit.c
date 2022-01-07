
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_space; } ;
struct pblk {struct pblk_rl rl; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void pblk_set_space_limit(struct pblk *pblk)
{
 struct pblk_rl *rl = &pblk->rl;

 atomic_set(&rl->rb_space, 0);
}
