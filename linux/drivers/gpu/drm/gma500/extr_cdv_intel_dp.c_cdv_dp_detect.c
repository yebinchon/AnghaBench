
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct cdv_intel_dp {int * dpcd; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 size_t DP_DPCD_REV ;
 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ) ;
 int cdv_intel_dp_aux_native_read (struct gma_encoder*,int,int *,int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;

__attribute__((used)) static enum drm_connector_status cdv_dp_detect(struct gma_encoder *encoder)
{
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 enum drm_connector_status status;

 status = connector_status_disconnected;
 if (cdv_intel_dp_aux_native_read(encoder, 0x000, intel_dp->dpcd,
         sizeof (intel_dp->dpcd)) == sizeof (intel_dp->dpcd))
 {
  if (intel_dp->dpcd[DP_DPCD_REV] != 0)
   status = connector_status_connected;
 }
 if (status == connector_status_connected)
  DRM_DEBUG_KMS("DPCD: Rev=%x LN_Rate=%x LN_CNT=%x LN_DOWNSP=%x\n",
   intel_dp->dpcd[0], intel_dp->dpcd[1],
   intel_dp->dpcd[2], intel_dp->dpcd[3]);
 return status;
}
