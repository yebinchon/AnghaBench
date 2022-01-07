
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpci200_slot {int dummy; } ;
struct tpci200_board {int mutex; int * slots; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TPCI200_NB_SLOT ;
 int * kcalloc (int ,int,int ) ;
 int kfree (int *) ;
 int mutex_init (int *) ;
 int tpci200_register (struct tpci200_board*) ;

__attribute__((used)) static int tpci200_install(struct tpci200_board *tpci200)
{
 int res;

 tpci200->slots = kcalloc(TPCI200_NB_SLOT, sizeof(struct tpci200_slot),
     GFP_KERNEL);
 if (tpci200->slots == ((void*)0))
  return -ENOMEM;

 res = tpci200_register(tpci200);
 if (res) {
  kfree(tpci200->slots);
  tpci200->slots = ((void*)0);
  return res;
 }

 mutex_init(&tpci200->mutex);
 return 0;
}
