
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int embedded_panel_h_size; int embedded_panel_v_size; } ;
struct dce112_compressor {TYPE_1__ base; } ;



__attribute__((used)) static bool is_source_bigger_than_epanel_size(
 struct dce112_compressor *cp110,
 uint32_t source_view_width,
 uint32_t source_view_height)
{
 if (cp110->base.embedded_panel_h_size != 0 &&
  cp110->base.embedded_panel_v_size != 0 &&
  ((source_view_width * source_view_height) >
  (cp110->base.embedded_panel_h_size *
   cp110->base.embedded_panel_v_size)))
  return 1;

 return 0;
}
