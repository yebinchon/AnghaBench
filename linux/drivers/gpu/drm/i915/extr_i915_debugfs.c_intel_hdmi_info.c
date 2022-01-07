
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct intel_hdmi {int has_audio; } ;
struct intel_encoder {int base; } ;
struct TYPE_2__ {scalar_t__ shim; } ;
struct intel_connector {TYPE_1__ hdcp; struct intel_encoder* encoder; } ;


 struct intel_hdmi* enc_to_intel_hdmi (int *) ;
 int intel_hdcp_info (struct seq_file*,struct intel_connector*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int yesno (int ) ;

__attribute__((used)) static void intel_hdmi_info(struct seq_file *m,
       struct intel_connector *intel_connector)
{
 struct intel_encoder *intel_encoder = intel_connector->encoder;
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(&intel_encoder->base);

 seq_printf(m, "\taudio support: %s\n", yesno(intel_hdmi->has_audio));
 if (intel_connector->hdcp.shim) {
  seq_puts(m, "\tHDCP version: ");
  intel_hdcp_info(m, intel_connector);
 }
}
