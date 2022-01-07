
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipp_prescale_params {int scale; int mode; } ;
struct dc_plane_state {int format; } ;


 int ASSERT (int) ;
 int IPP_PRESCALE_MODE_FIXED_UNSIGNED ;
__attribute__((used)) static void build_prescale_params(struct ipp_prescale_params *prescale_params,
  const struct dc_plane_state *plane_state)
{
 prescale_params->mode = IPP_PRESCALE_MODE_FIXED_UNSIGNED;

 switch (plane_state->format) {
 case 128:
  prescale_params->scale = 0x2082;
  break;
 case 129:
 case 132:
  prescale_params->scale = 0x2020;
  break;
 case 130:
 case 133:
  prescale_params->scale = 0x2008;
  break;
 case 131:
 case 134:
  prescale_params->scale = 0x2000;
  break;
 default:
  ASSERT(0);
  break;
 }
}
