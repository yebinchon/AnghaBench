
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_vgpu_edid { ____Placeholder_intel_vgpu_edid } intel_vgpu_edid ;





__attribute__((used)) static inline unsigned int vgpu_edid_xres(enum intel_vgpu_edid id)
{
 switch (id) {
 case 129:
  return 1024;
 case 128:
  return 1920;
 default:
  return 0;
 }
}
