
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
typedef enum sun8i_csc_mode { ____Placeholder_sun8i_csc_mode } sun8i_csc_mode ;
typedef enum drm_color_range { ____Placeholder_drm_color_range } drm_color_range ;
typedef enum drm_color_encoding { ____Placeholder_drm_color_encoding } drm_color_encoding ;


 int DRM_WARN (char*) ;
 int SUN8I_CSC_COEFF (int ,int ) ;


 int regmap_bulk_write (struct regmap*,int ,int const*,int) ;
 int *** yuv2rgb ;
 int *** yvu2rgb ;

__attribute__((used)) static void sun8i_csc_set_coefficients(struct regmap *map, u32 base,
           enum sun8i_csc_mode mode,
           enum drm_color_encoding encoding,
           enum drm_color_range range)
{
 const u32 *table;
 u32 base_reg;

 switch (mode) {
 case 129:
  table = yuv2rgb[range][encoding];
  break;
 case 128:
  table = yvu2rgb[range][encoding];
  break;
 default:
  DRM_WARN("Wrong CSC mode specified.\n");
  return;
 }

 base_reg = SUN8I_CSC_COEFF(base, 0);
 regmap_bulk_write(map, base_reg, table, 12);
}
