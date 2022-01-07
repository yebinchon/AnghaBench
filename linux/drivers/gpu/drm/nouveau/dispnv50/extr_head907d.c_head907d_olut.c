
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int load; } ;
struct nv50_head_atom {TYPE_1__ olut; } ;
struct nv50_head {int dummy; } ;


 int head907d_olut_load ;

void
head907d_olut(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 asyh->olut.mode = 7;
 asyh->olut.load = head907d_olut_load;
}
