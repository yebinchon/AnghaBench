
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_cursor_plane_format {scalar_t__ x_hot; scalar_t__ width; scalar_t__ y_hot; scalar_t__ height; } ;



__attribute__((used)) static bool validate_hotspot(struct intel_vgpu_cursor_plane_format *c)
{
 if (c && c->x_hot <= c->width && c->y_hot <= c->height)
  return 1;
 else
  return 0;
}
