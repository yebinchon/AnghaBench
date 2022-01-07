
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sseu_dev_info {int max_slices; int max_subslices; int * subslice_mask; } ;
struct drm_printer {int dummy; } ;


 int drm_printf (struct drm_printer*,char*,...) ;
 int hweight16 (int ) ;
 int intel_sseu_subslices_per_slice (struct sseu_dev_info const*,int) ;
 int sseu_get_eus (struct sseu_dev_info const*,int,int) ;

void intel_device_info_dump_topology(const struct sseu_dev_info *sseu,
         struct drm_printer *p)
{
 int s, ss;

 if (sseu->max_slices == 0) {
  drm_printf(p, "Unavailable\n");
  return;
 }

 for (s = 0; s < sseu->max_slices; s++) {
  drm_printf(p, "slice%d: %u subslice(s) (0x%hhx):\n",
      s, intel_sseu_subslices_per_slice(sseu, s),
      sseu->subslice_mask[s]);

  for (ss = 0; ss < sseu->max_subslices; ss++) {
   u16 enabled_eus = sseu_get_eus(sseu, s, ss);

   drm_printf(p, "\tsubslice%d: %u EUs (0x%hx)\n",
       ss, hweight16(enabled_eus), enabled_eus);
  }
 }
}
