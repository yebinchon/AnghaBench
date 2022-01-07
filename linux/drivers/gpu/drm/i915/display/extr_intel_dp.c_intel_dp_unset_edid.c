
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int has_audio; int aux; struct intel_connector* attached_connector; } ;
struct intel_connector {int * detect_edid; } ;


 int drm_dp_cec_unset_edid (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void
intel_dp_unset_edid(struct intel_dp *intel_dp)
{
 struct intel_connector *intel_connector = intel_dp->attached_connector;

 drm_dp_cec_unset_edid(&intel_dp->aux);
 kfree(intel_connector->detect_edid);
 intel_connector->detect_edid = ((void*)0);

 intel_dp->has_audio = 0;
}
