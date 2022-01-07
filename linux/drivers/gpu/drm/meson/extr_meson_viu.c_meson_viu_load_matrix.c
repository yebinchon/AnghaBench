
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int dummy; } ;


 int RGB709_to_YUV709l_coeff ;
 int VIU_LUT_OSD_EOTF ;
 int VIU_LUT_OSD_OETF ;
 int VIU_MATRIX_OSD ;
 int VIU_MATRIX_OSD_EOTF ;
 int eotf_33_linear_mapping ;
 int eotf_bypass_coeff ;
 int meson_viu_set_osd_lut (struct meson_drm*,int ,int ,int ,int ,int) ;
 int meson_viu_set_osd_matrix (struct meson_drm*,int ,int ,int) ;
 int oetf_41_linear_mapping ;

__attribute__((used)) static void meson_viu_load_matrix(struct meson_drm *priv)
{

 meson_viu_set_osd_lut(priv, VIU_LUT_OSD_EOTF,
         eotf_33_linear_mapping,
         eotf_33_linear_mapping,
         eotf_33_linear_mapping,
         0);


 meson_viu_set_osd_matrix(priv, VIU_MATRIX_OSD_EOTF,
     eotf_bypass_coeff,
     0);


 meson_viu_set_osd_lut(priv, VIU_LUT_OSD_OETF,
         oetf_41_linear_mapping,
         oetf_41_linear_mapping,
         oetf_41_linear_mapping,
         0);


 meson_viu_set_osd_matrix(priv, VIU_MATRIX_OSD,
     RGB709_to_YUV709l_coeff,
     1);
}
