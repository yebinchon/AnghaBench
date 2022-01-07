
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int flag; } ;


 int FLG_LAPB ;
 int PH_DEACTIVATE_REQ ;
 int l2_newid (struct layer2*) ;
 int l2down_create (struct layer2*,int ,int ,int ,int *) ;
 int l2up_create (struct layer2*,int,int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

inline void
lapb_dl_release_l2l3(struct layer2 *l2, int f)
{
 if (test_bit(FLG_LAPB, &l2->flag))
  l2down_create(l2, PH_DEACTIVATE_REQ, l2_newid(l2), 0, ((void*)0));
 l2up_create(l2, f, 0, ((void*)0));
}
