
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_atomic_state {int dummy; } ;
struct nv50_atom {struct drm_atomic_state state; int outp; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ drm_atomic_state_init (struct drm_device*,struct drm_atomic_state*) ;
 int kfree (struct nv50_atom*) ;
 struct nv50_atom* kzalloc (int,int ) ;

__attribute__((used)) static struct drm_atomic_state *
nv50_disp_atomic_state_alloc(struct drm_device *dev)
{
 struct nv50_atom *atom;
 if (!(atom = kzalloc(sizeof(*atom), GFP_KERNEL)) ||
     drm_atomic_state_init(dev, &atom->state) < 0) {
  kfree(atom);
  return ((void*)0);
 }
 INIT_LIST_HEAD(&atom->outp);
 return &atom->state;
}
