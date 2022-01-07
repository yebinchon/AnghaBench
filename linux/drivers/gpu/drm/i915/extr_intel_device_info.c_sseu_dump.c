
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sseu_dev_info {int max_slices; int has_eu_pg; int has_subslice_pg; int has_slice_pg; int eu_per_subslice; int eu_total; int * subslice_mask; int slice_mask; } ;
struct drm_printer {int dummy; } ;


 int drm_printf (struct drm_printer*,char*,int,...) ;
 int hweight8 (int ) ;
 int intel_sseu_subslice_total (struct sseu_dev_info const*) ;
 int intel_sseu_subslices_per_slice (struct sseu_dev_info const*,int) ;
 int yesno (int ) ;

__attribute__((used)) static void sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p)
{
 int s;

 drm_printf(p, "slice total: %u, mask=%04x\n",
     hweight8(sseu->slice_mask), sseu->slice_mask);
 drm_printf(p, "subslice total: %u\n", intel_sseu_subslice_total(sseu));
 for (s = 0; s < sseu->max_slices; s++) {
  drm_printf(p, "slice%d: %u subslices, mask=%04x\n",
      s, intel_sseu_subslices_per_slice(sseu, s),
      sseu->subslice_mask[s]);
 }
 drm_printf(p, "EU total: %u\n", sseu->eu_total);
 drm_printf(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
 drm_printf(p, "has slice power gating: %s\n",
     yesno(sseu->has_slice_pg));
 drm_printf(p, "has subslice power gating: %s\n",
     yesno(sseu->has_subslice_pg));
 drm_printf(p, "has EU power gating: %s\n", yesno(sseu->has_eu_pg));
}
