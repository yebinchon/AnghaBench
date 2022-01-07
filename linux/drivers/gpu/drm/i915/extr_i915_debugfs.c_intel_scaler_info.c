
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct intel_scaler {int mode; int in_use; } ;
struct TYPE_3__ {struct intel_scaler* scalers; int scaler_id; int scaler_users; } ;
struct intel_crtc_state {TYPE_1__ scaler_state; } ;
struct TYPE_4__ {int state; } ;
struct intel_crtc {int num_scalers; TYPE_2__ base; } ;


 int seq_printf (struct seq_file*,char*,int,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 struct intel_crtc_state* to_intel_crtc_state (int ) ;
 int yesno (int ) ;

__attribute__((used)) static void intel_scaler_info(struct seq_file *m, struct intel_crtc *intel_crtc)
{
 struct intel_crtc_state *pipe_config;
 int num_scalers = intel_crtc->num_scalers;
 int i;

 pipe_config = to_intel_crtc_state(intel_crtc->base.state);


 if (num_scalers) {
  seq_printf(m, "\tnum_scalers=%d, scaler_users=%x scaler_id=%d",
      num_scalers,
      pipe_config->scaler_state.scaler_users,
      pipe_config->scaler_state.scaler_id);

  for (i = 0; i < num_scalers; i++) {
   struct intel_scaler *sc =
     &pipe_config->scaler_state.scalers[i];

   seq_printf(m, ", scalers[%d]: use=%s, mode=%x",
       i, yesno(sc->in_use), sc->mode);
  }
  seq_puts(m, "\n");
 } else {
  seq_puts(m, "\tNo scalers available on this platform\n");
 }
}
