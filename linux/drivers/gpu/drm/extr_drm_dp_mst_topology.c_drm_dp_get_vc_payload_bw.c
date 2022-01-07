
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_DEBUG_KMS (char*,int,int) ;

__attribute__((used)) static bool drm_dp_get_vc_payload_bw(int dp_link_bw,
         int dp_link_count,
         int *out)
{
 switch (dp_link_bw) {
 default:
  DRM_DEBUG_KMS("invalid link bandwidth in DPCD: %x (link count: %d)\n",
         dp_link_bw, dp_link_count);
  return 0;

 case 131:
  *out = 3 * dp_link_count;
  break;
 case 130:
  *out = 5 * dp_link_count;
  break;
 case 129:
  *out = 10 * dp_link_count;
  break;
 case 128:
  *out = 15 * dp_link_count;
  break;
 }
 return 1;
}
