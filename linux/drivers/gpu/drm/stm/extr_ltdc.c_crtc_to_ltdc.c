
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltdc_device {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ dev_private; } ;



__attribute__((used)) static inline struct ltdc_device *crtc_to_ltdc(struct drm_crtc *crtc)
{
 return (struct ltdc_device *)crtc->dev->dev_private;
}
