
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dc_bios {int dummy; } ;
struct dc {int dummy; } ;
typedef enum pipe_gating_control { ____Placeholder_pipe_gating_control } pipe_gating_control ;



__attribute__((used)) static bool dcn10_dummy_display_power_gating(
 struct dc *dc,
 uint8_t controller_id,
 struct dc_bios *dcb,
 enum pipe_gating_control power_gating)
{
 return 1;
}
