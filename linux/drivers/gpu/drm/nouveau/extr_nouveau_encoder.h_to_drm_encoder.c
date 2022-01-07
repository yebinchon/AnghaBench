
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct nouveau_encoder {TYPE_1__ base; } ;



__attribute__((used)) static inline struct drm_encoder *to_drm_encoder(struct nouveau_encoder *enc)
{
 return &enc->base.base;
}
