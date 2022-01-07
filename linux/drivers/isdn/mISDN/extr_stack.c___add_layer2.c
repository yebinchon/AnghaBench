
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mISDNstack {int layer2; } ;
struct mISDNchannel {int list; } ;


 int list_add_tail (int *,int *) ;

void
__add_layer2(struct mISDNchannel *ch, struct mISDNstack *st)
{
 list_add_tail(&ch->list, &st->layer2);
}
