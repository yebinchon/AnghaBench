
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int handle; } ;
struct TYPE_5__ {TYPE_1__ sync; } ;
struct nv50_core {TYPE_2__ chan; } ;


 int evo_data (int *,int ) ;
 int evo_kick (int *,TYPE_2__*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (TYPE_2__*,int) ;

void
core507d_init(struct nv50_core *core)
{
 u32 *push;
 if ((push = evo_wait(&core->chan, 2))) {
  evo_mthd(push, 0x0088, 1);
  evo_data(push, core->chan.sync.handle);
  evo_kick(push, &core->chan);
 }
}
