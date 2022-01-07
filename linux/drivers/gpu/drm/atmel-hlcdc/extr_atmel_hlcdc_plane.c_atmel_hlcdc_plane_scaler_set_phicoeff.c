
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_hlcdc_plane {int layer; } ;


 int atmel_hlcdc_layer_write_cfg (int *,unsigned int,int const) ;

__attribute__((used)) static void
atmel_hlcdc_plane_scaler_set_phicoeff(struct atmel_hlcdc_plane *plane,
          const u32 *coeff_tab, int size,
          unsigned int cfg_offs)
{
 int i;

 for (i = 0; i < size; i++)
  atmel_hlcdc_layer_write_cfg(&plane->layer, cfg_offs + i,
         coeff_tab[i]);
}
