
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ntfy; } ;
struct TYPE_12__ {int offset; int awaken; int handle; } ;
struct nv50_wndw_atom {TYPE_3__ set; TYPE_6__ ntfy; } ;
struct TYPE_7__ {int handle; } ;
struct TYPE_8__ {TYPE_1__ sync; } ;
struct TYPE_11__ {int dev; } ;
struct nv50_wndw {int ntfy; TYPE_4__* func; TYPE_2__ wndw; TYPE_5__ plane; } ;
struct nv50_disp {int sync; } ;
struct TYPE_10__ {int (* ntfy_reset ) (int ,int) ;} ;


 struct nv50_disp* nv50_disp (int ) ;
 int stub1 (int ,int) ;

void
nv50_wndw_ntfy_enable(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 struct nv50_disp *disp = nv50_disp(wndw->plane.dev);

 asyw->ntfy.handle = wndw->wndw.sync.handle;
 asyw->ntfy.offset = wndw->ntfy;
 asyw->ntfy.awaken = 0;
 asyw->set.ntfy = 1;

 wndw->func->ntfy_reset(disp->sync, wndw->ntfy);
 wndw->ntfy ^= 0x10;
}
