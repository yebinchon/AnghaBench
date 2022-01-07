
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;





 int MISSING_CASE (int) ;

__attribute__((used)) static const char *lspcon_mode_name(enum drm_lspcon_mode mode)
{
 switch (mode) {
 case 128:
  return "PCON";
 case 129:
  return "LS";
 case 130:
  return "INVALID";
 default:
  MISSING_CASE(mode);
  return "INVALID";
 }
}
