
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_chan {int user; } ;


 int nvif_object_fini (int *) ;

__attribute__((used)) static void
nv50_chan_destroy(struct nv50_chan *chan)
{
 nvif_object_fini(&chan->user);
}
