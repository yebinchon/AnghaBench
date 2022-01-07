
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_crtc_state {int vrr_supported; int vrr_infopacket; int vrr_params; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void reset_freesync_config_for_crtc(
 struct dm_crtc_state *new_crtc_state)
{
 new_crtc_state->vrr_supported = 0;

 memset(&new_crtc_state->vrr_params, 0,
        sizeof(new_crtc_state->vrr_params));
 memset(&new_crtc_state->vrr_infopacket, 0,
        sizeof(new_crtc_state->vrr_infopacket));
}
