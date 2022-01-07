
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct atmel_hlcdc_crtc {TYPE_2__* dc; } ;
struct TYPE_4__ {TYPE_1__* hlcdc; } ;
struct TYPE_3__ {struct regmap* regmap; } ;


 int ATMEL_HLCDC_IER ;
 int ATMEL_HLCDC_SOF ;
 struct atmel_hlcdc_crtc* drm_crtc_to_atmel_hlcdc_crtc (struct drm_crtc*) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int atmel_hlcdc_crtc_enable_vblank(struct drm_crtc *c)
{
 struct atmel_hlcdc_crtc *crtc = drm_crtc_to_atmel_hlcdc_crtc(c);
 struct regmap *regmap = crtc->dc->hlcdc->regmap;


 regmap_write(regmap, ATMEL_HLCDC_IER, ATMEL_HLCDC_SOF);

 return 0;
}
