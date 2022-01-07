
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
struct dc_rgb {size_t red; size_t green; size_t blue; } ;


 int CM_3DLUT_DATA_30BIT ;
 int REG_SET (int ,int ,int ,size_t) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static void dpp20_set3dlut_ram10(
  struct dpp *dpp_base,
  const struct dc_rgb *lut,
  uint32_t entries)
{
 uint32_t i, red, green, blue, value;
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 for (i = 0; i < entries; i++) {
  red = lut[i].red;
  green = lut[i].green;
  blue = lut[i].blue;

  value = (red<<20) | (green<<10) | blue;

  REG_SET(CM_3DLUT_DATA_30BIT, 0, CM_3DLUT_DATA_30BIT, value);
 }

}
