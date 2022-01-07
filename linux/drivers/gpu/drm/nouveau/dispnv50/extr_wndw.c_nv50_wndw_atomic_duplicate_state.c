
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane_state {int dummy; } ;
struct TYPE_4__ {scalar_t__ mask; } ;
struct TYPE_3__ {scalar_t__ mask; } ;
struct nv50_wndw_atom {struct drm_plane_state state; TYPE_2__ set; TYPE_1__ clr; int point; int image; int csc; int xlut; int * ilut; int ntfy; int sema; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct nv50_wndw_atom* kmalloc (int,int ) ;
 struct nv50_wndw_atom* nv50_wndw_atom (int ) ;

__attribute__((used)) static struct drm_plane_state *
nv50_wndw_atomic_duplicate_state(struct drm_plane *plane)
{
 struct nv50_wndw_atom *armw = nv50_wndw_atom(plane->state);
 struct nv50_wndw_atom *asyw;
 if (!(asyw = kmalloc(sizeof(*asyw), GFP_KERNEL)))
  return ((void*)0);
 __drm_atomic_helper_plane_duplicate_state(plane, &asyw->state);
 asyw->sema = armw->sema;
 asyw->ntfy = armw->ntfy;
 asyw->ilut = ((void*)0);
 asyw->xlut = armw->xlut;
 asyw->csc = armw->csc;
 asyw->image = armw->image;
 asyw->point = armw->point;
 asyw->clr.mask = 0;
 asyw->set.mask = 0;
 return &asyw->state;
}
