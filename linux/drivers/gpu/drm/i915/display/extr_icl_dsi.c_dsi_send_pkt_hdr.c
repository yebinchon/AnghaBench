
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mipi_dsi_packet {int* header; scalar_t__ payload; } ;
struct intel_dsi_host {int port; struct intel_dsi* intel_dsi; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_dsi {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int DRM_ERROR (char*) ;
 int DSI_CMD_TXHDR (int) ;
 int DT_MASK ;
 int DT_SHIFT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int LP_DATA_TRANSFER ;
 int PARAM_WC_LOWER_SHIFT ;
 int PARAM_WC_MASK ;
 int PARAM_WC_UPPER_SHIFT ;
 int PAYLOAD_PRESENT ;
 int VBLANK_FENCE ;
 int VC_MASK ;
 int VC_SHIFT ;
 int dsi_port_to_transcoder (int ) ;
 int header_credits_available (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
       struct mipi_dsi_packet pkt, bool enable_lpdt)
{
 struct intel_dsi *intel_dsi = host->intel_dsi;
 struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
 u32 tmp;
 int free_credits;


 free_credits = header_credits_available(dev_priv, dsi_trans);
 if (free_credits < 1) {
  DRM_ERROR("send pkt header failed, not enough hdr credits\n");
  return -1;
 }

 tmp = I915_READ(DSI_CMD_TXHDR(dsi_trans));

 if (pkt.payload)
  tmp |= PAYLOAD_PRESENT;
 else
  tmp &= ~PAYLOAD_PRESENT;

 tmp &= ~VBLANK_FENCE;

 if (enable_lpdt)
  tmp |= LP_DATA_TRANSFER;

 tmp &= ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
 tmp |= ((pkt.header[0] & VC_MASK) << VC_SHIFT);
 tmp |= ((pkt.header[0] & DT_MASK) << DT_SHIFT);
 tmp |= (pkt.header[1] << PARAM_WC_LOWER_SHIFT);
 tmp |= (pkt.header[2] << PARAM_WC_UPPER_SHIFT);
 I915_WRITE(DSI_CMD_TXHDR(dsi_trans), tmp);

 return 0;
}
