
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int output_mode; int load; scalar_t__ range; scalar_t__ size; } ;
struct nv50_head_atom {TYPE_1__ olut; } ;
struct nv50_head {int dummy; } ;


 int head907d_olut_load ;

__attribute__((used)) static void
headc37d_olut(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 asyh->olut.mode = 2;
 asyh->olut.size = 0;
 asyh->olut.range = 0;
 asyh->olut.output_mode = 1;
 asyh->olut.load = head907d_olut_load;
}
