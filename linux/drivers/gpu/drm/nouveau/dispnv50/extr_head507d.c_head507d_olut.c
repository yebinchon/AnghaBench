
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mode; int load; } ;
struct TYPE_3__ {int cpp; } ;
struct nv50_head_atom {TYPE_2__ olut; TYPE_1__ base; } ;
struct nv50_head {int dummy; } ;


 int head507d_olut_load ;

void
head507d_olut(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 if (asyh->base.cpp == 1)
  asyh->olut.mode = 0;
 else
  asyh->olut.mode = 1;

 asyh->olut.load = head507d_olut_load;
}
