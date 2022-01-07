
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ handle; } ;
struct TYPE_8__ {scalar_t__ handle; } ;
struct nv50_wndw_atom {TYPE_1__ sema; TYPE_4__ ntfy; } ;
struct TYPE_6__ {int name; int dev; } ;
struct nv50_wndw {TYPE_3__* func; TYPE_2__ plane; } ;
struct nv50_head_atom {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct TYPE_7__ {int (* release ) (struct nv50_wndw*,struct nv50_wndw_atom*,struct nv50_head_atom*) ;} ;


 int NV_ATOMIC (struct nouveau_drm*,char*,int ) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int stub1 (struct nv50_wndw*,struct nv50_wndw_atom*,struct nv50_head_atom*) ;

__attribute__((used)) static void
nv50_wndw_atomic_check_release(struct nv50_wndw *wndw,
          struct nv50_wndw_atom *asyw,
          struct nv50_head_atom *asyh)
{
 struct nouveau_drm *drm = nouveau_drm(wndw->plane.dev);
 NV_ATOMIC(drm, "%s release\n", wndw->plane.name);
 wndw->func->release(wndw, asyw, asyh);
 asyw->ntfy.handle = 0;
 asyw->sema.handle = 0;
}
