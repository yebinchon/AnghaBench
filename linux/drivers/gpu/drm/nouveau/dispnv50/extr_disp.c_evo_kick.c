
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int user; } ;
struct nv50_dmac {int lock; int * ptr; TYPE_1__ base; } ;


 int evo_flush (struct nv50_dmac*) ;
 int mutex_unlock (int *) ;
 int nvif_wr32 (int *,int,int) ;

void
evo_kick(u32 *push, struct nv50_dmac *evoc)
{
 struct nv50_dmac *dmac = evoc;

 evo_flush(dmac);

 nvif_wr32(&dmac->base.user, 0x0000, (push - dmac->ptr) << 2);
 mutex_unlock(&dmac->lock);
}
