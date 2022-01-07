
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder_slave_funcs {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {struct drm_encoder_slave_funcs const* slave_funcs; } ;


 TYPE_1__* to_encoder_slave (struct drm_encoder*) ;

__attribute__((used)) static inline const struct drm_encoder_slave_funcs *
get_slave_funcs(struct drm_encoder *enc)
{
 return to_encoder_slave(enc)->slave_funcs;
}
