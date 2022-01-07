
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ARRAY_SIZE (int*) ;
 int DP_DSC_MAX_SMALL_JOINER_RAM_BUFFER ;
 int DRM_DEBUG_KMS (char*,int,...) ;
 int intel_dp_mode_to_fec_clock (int) ;
 int min (int,int) ;
 int* valid_dsc_bpp ;

__attribute__((used)) static u16 intel_dp_dsc_get_output_bpp(u32 link_clock, u32 lane_count,
           u32 mode_clock, u32 mode_hdisplay)
{
 u32 bits_per_pixel, max_bpp_small_joiner_ram;
 int i;







 bits_per_pixel = (link_clock * lane_count * 8) /
    intel_dp_mode_to_fec_clock(mode_clock);
 DRM_DEBUG_KMS("Max link bpp: %u\n", bits_per_pixel);


 max_bpp_small_joiner_ram = DP_DSC_MAX_SMALL_JOINER_RAM_BUFFER / mode_hdisplay;
 DRM_DEBUG_KMS("Max small joiner bpp: %u\n", max_bpp_small_joiner_ram);





 bits_per_pixel = min(bits_per_pixel, max_bpp_small_joiner_ram);


 if (bits_per_pixel < valid_dsc_bpp[0]) {
  DRM_DEBUG_KMS("Unsupported BPP %u, min %u\n",
         bits_per_pixel, valid_dsc_bpp[0]);
  return 0;
 }


 for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
  if (bits_per_pixel < valid_dsc_bpp[i + 1])
   break;
 }
 bits_per_pixel = valid_dsc_bpp[i];





 return bits_per_pixel << 4;
}
