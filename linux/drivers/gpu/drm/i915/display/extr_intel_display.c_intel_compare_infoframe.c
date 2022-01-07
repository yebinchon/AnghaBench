
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union hdmi_infoframe {int dummy; } hdmi_infoframe ;


 scalar_t__ memcmp (union hdmi_infoframe const*,union hdmi_infoframe const*,int) ;

__attribute__((used)) static bool
intel_compare_infoframe(const union hdmi_infoframe *a,
   const union hdmi_infoframe *b)
{
 return memcmp(a, b, sizeof(*a)) == 0;
}
