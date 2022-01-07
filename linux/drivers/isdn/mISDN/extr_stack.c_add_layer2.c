
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mISDNstack {int lmutex; } ;
struct mISDNchannel {int dummy; } ;


 int __add_layer2 (struct mISDNchannel*,struct mISDNstack*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
add_layer2(struct mISDNchannel *ch, struct mISDNstack *st)
{
 mutex_lock(&st->lmutex);
 __add_layer2(ch, st);
 mutex_unlock(&st->lmutex);
}
