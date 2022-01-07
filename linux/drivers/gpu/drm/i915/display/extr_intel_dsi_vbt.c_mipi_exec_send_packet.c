
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mipi_dsi_device {int channel; int mode_flags; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_dsi {int ports; TYPE_3__** dsi_hosts; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_6__ {struct mipi_dsi_device* device; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_DEBUG_KMS (char*,...) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int MIPI_DSI_MODE_LPM ;
 int MIPI_PORT_SHIFT ;
 int MIPI_TRANSFER_MODE_SHIFT ;
 int MIPI_VIRTUAL_CHANNEL_SHIFT ;
 int PORT_C ;
 int intel_dsi_seq_port_to_port (int) ;
 int mipi_dsi_dcs_write_buffer (struct mipi_dsi_device*,int const*,int) ;
 int mipi_dsi_generic_write (struct mipi_dsi_device*,int const*,int) ;
 int port_name (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 int vlv_dsi_wait_for_fifo_empty (struct intel_dsi*,int) ;

__attribute__((used)) static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
           const u8 *data)
{
 struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 struct mipi_dsi_device *dsi_device;
 u8 type, flags, seq_port;
 u16 len;
 enum port port;

 DRM_DEBUG_KMS("\n");

 flags = *data++;
 type = *data++;

 len = *((u16 *) data);
 data += 2;

 seq_port = (flags >> MIPI_PORT_SHIFT) & 3;






 if (intel_dsi->ports == (1 << PORT_C))
  port = PORT_C;
 else
  port = intel_dsi_seq_port_to_port(seq_port);

 dsi_device = intel_dsi->dsi_hosts[port]->device;
 if (!dsi_device) {
  DRM_DEBUG_KMS("no dsi device for port %c\n", port_name(port));
  goto out;
 }

 if ((flags >> MIPI_TRANSFER_MODE_SHIFT) & 1)
  dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;
 else
  dsi_device->mode_flags |= MIPI_DSI_MODE_LPM;

 dsi_device->channel = (flags >> MIPI_VIRTUAL_CHANNEL_SHIFT) & 3;

 switch (type) {
 case 130:
  mipi_dsi_generic_write(dsi_device, ((void*)0), 0);
  break;
 case 129:
  mipi_dsi_generic_write(dsi_device, data, 1);
  break;
 case 128:
  mipi_dsi_generic_write(dsi_device, data, 2);
  break;
 case 133:
 case 132:
 case 131:
  DRM_DEBUG_DRIVER("Generic Read not yet implemented or used\n");
  break;
 case 134:
  mipi_dsi_generic_write(dsi_device, data, len);
  break;
 case 136:
  mipi_dsi_dcs_write_buffer(dsi_device, data, 1);
  break;
 case 135:
  mipi_dsi_dcs_write_buffer(dsi_device, data, 2);
  break;
 case 137:
  DRM_DEBUG_DRIVER("DCS Read not yet implemented or used\n");
  break;
 case 138:
  mipi_dsi_dcs_write_buffer(dsi_device, data, len);
  break;
 }

 if (INTEL_GEN(dev_priv) < 11)
  vlv_dsi_wait_for_fifo_empty(intel_dsi, port);

out:
 data += len;

 return data;
}
