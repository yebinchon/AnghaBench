
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int aux; int has_audio; struct intel_connector* attached_connector; } ;
struct intel_connector {struct edid* detect_edid; } ;
struct edid {int dummy; } ;


 int drm_detect_monitor_audio (struct edid*) ;
 int drm_dp_cec_set_edid (int *,struct edid*) ;
 struct edid* intel_dp_get_edid (struct intel_dp*) ;
 int intel_dp_unset_edid (struct intel_dp*) ;

__attribute__((used)) static void
intel_dp_set_edid(struct intel_dp *intel_dp)
{
 struct intel_connector *intel_connector = intel_dp->attached_connector;
 struct edid *edid;

 intel_dp_unset_edid(intel_dp);
 edid = intel_dp_get_edid(intel_dp);
 intel_connector->detect_edid = edid;

 intel_dp->has_audio = drm_detect_monitor_audio(edid);
 drm_dp_cec_set_edid(&intel_dp->aux, edid);
}
