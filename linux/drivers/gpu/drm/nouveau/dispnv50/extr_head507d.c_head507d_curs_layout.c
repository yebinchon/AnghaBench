
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; } ;
struct nv50_wndw_atom {TYPE_1__ image; } ;
struct TYPE_4__ {int layout; } ;
struct nv50_head_atom {TYPE_2__ curs; } ;
struct nv50_head {int dummy; } ;


 int EINVAL ;

int
head507d_curs_layout(struct nv50_head *head, struct nv50_wndw_atom *asyw,
       struct nv50_head_atom *asyh)
{
 switch (asyw->image.w) {
 case 32: asyh->curs.layout = 0; break;
 case 64: asyh->curs.layout = 1; break;
 default:
  return -EINVAL;
 }
 return 0;
}
