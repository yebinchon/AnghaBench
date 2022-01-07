
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ mask; } ;
struct nouveau_conn_atom {struct drm_connector_state state; TYPE_1__ set; int procamp; int scaler; int dither; } ;
struct drm_connector {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_duplicate_state (struct drm_connector*,struct drm_connector_state*) ;
 struct nouveau_conn_atom* kmalloc (int,int ) ;
 struct nouveau_conn_atom* nouveau_conn_atom (int ) ;

struct drm_connector_state *
nouveau_conn_atomic_duplicate_state(struct drm_connector *connector)
{
 struct nouveau_conn_atom *armc = nouveau_conn_atom(connector->state);
 struct nouveau_conn_atom *asyc;
 if (!(asyc = kmalloc(sizeof(*asyc), GFP_KERNEL)))
  return ((void*)0);
 __drm_atomic_helper_connector_duplicate_state(connector, &asyc->state);
 asyc->dither = armc->dither;
 asyc->scaler = armc->scaler;
 asyc->procamp = armc->procamp;
 asyc->set.mask = 0;
 return &asyc->state;
}
