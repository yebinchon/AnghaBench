
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nv50_mstm {int mgr; } ;
struct nv50_mstc {int native; int port; struct nv50_mstm* mstm; } ;
struct TYPE_6__ {int tu; int pbn; } ;
struct nv50_head_atom {TYPE_3__ dp; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_5__ {int clock; } ;
struct drm_crtc_state {TYPE_2__ adjusted_mode; scalar_t__ connectors_changed; scalar_t__ mode_changed; struct drm_atomic_state* state; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct TYPE_4__ {int bpc; } ;
struct drm_connector {TYPE_1__ display_info; } ;
struct drm_atomic_state {int duplicated; } ;


 int drm_dp_atomic_find_vcpi_slots (struct drm_atomic_state*,int *,int ,int ) ;
 int drm_dp_calc_pbn_mode (int const,int const) ;
 struct nv50_head_atom* nv50_head_atom (struct drm_crtc_state*) ;
 struct nv50_mstc* nv50_mstc (struct drm_connector*) ;
 int nv50_outp_atomic_check_view (struct drm_encoder*,struct drm_crtc_state*,struct drm_connector_state*,int ) ;

__attribute__((used)) static int
nv50_msto_atomic_check(struct drm_encoder *encoder,
         struct drm_crtc_state *crtc_state,
         struct drm_connector_state *conn_state)
{
 struct drm_atomic_state *state = crtc_state->state;
 struct drm_connector *connector = conn_state->connector;
 struct nv50_mstc *mstc = nv50_mstc(connector);
 struct nv50_mstm *mstm = mstc->mstm;
 struct nv50_head_atom *asyh = nv50_head_atom(crtc_state);
 int slots;

 if (crtc_state->mode_changed || crtc_state->connectors_changed) {






  if (!state->duplicated) {
   const int bpp = connector->display_info.bpc * 3;
   const int clock = crtc_state->adjusted_mode.clock;

   asyh->dp.pbn = drm_dp_calc_pbn_mode(clock, bpp);
  }

  slots = drm_dp_atomic_find_vcpi_slots(state, &mstm->mgr,
            mstc->port,
            asyh->dp.pbn);
  if (slots < 0)
   return slots;

  asyh->dp.tu = slots;
 }

 return nv50_outp_atomic_check_view(encoder, crtc_state, conn_state,
        mstc->native);
}
