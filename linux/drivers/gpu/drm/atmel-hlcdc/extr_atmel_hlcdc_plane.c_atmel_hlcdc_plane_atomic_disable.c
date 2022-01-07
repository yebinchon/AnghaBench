
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct atmel_hlcdc_plane {int layer; } ;


 int ATMEL_HLCDC_LAYER_A2Q ;
 int ATMEL_HLCDC_LAYER_CHDR ;
 int ATMEL_HLCDC_LAYER_IDR ;
 int ATMEL_HLCDC_LAYER_ISR ;
 int ATMEL_HLCDC_LAYER_RST ;
 int ATMEL_HLCDC_LAYER_UPDATE ;
 int atmel_hlcdc_layer_read_reg (int *,int ) ;
 int atmel_hlcdc_layer_write_reg (int *,int ,int) ;
 struct atmel_hlcdc_plane* drm_plane_to_atmel_hlcdc_plane (struct drm_plane*) ;

__attribute__((used)) static void atmel_hlcdc_plane_atomic_disable(struct drm_plane *p,
          struct drm_plane_state *old_state)
{
 struct atmel_hlcdc_plane *plane = drm_plane_to_atmel_hlcdc_plane(p);


 atmel_hlcdc_layer_write_reg(&plane->layer, ATMEL_HLCDC_LAYER_IDR,
        0xffffffff);


 atmel_hlcdc_layer_write_reg(&plane->layer, ATMEL_HLCDC_LAYER_CHDR,
        ATMEL_HLCDC_LAYER_RST |
        ATMEL_HLCDC_LAYER_A2Q |
        ATMEL_HLCDC_LAYER_UPDATE);


 atmel_hlcdc_layer_read_reg(&plane->layer, ATMEL_HLCDC_LAYER_ISR);
}
