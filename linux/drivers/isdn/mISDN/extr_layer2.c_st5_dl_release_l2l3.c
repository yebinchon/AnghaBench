
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int flag; } ;


 int DL_RELEASE_CNF ;
 int DL_RELEASE_IND ;
 int FLG_PEND_REL ;
 int l2up_create (struct layer2*,int,int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

inline void
st5_dl_release_l2l3(struct layer2 *l2)
{
 int pr;

 if (test_and_clear_bit(FLG_PEND_REL, &l2->flag))
  pr = DL_RELEASE_CNF;
 else
  pr = DL_RELEASE_IND;
 l2up_create(l2, pr, 0, ((void*)0));
}
