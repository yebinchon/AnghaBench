
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {struct intel_dp dp; } ;


 TYPE_1__* enc_to_dig_port (struct drm_encoder*) ;

__attribute__((used)) static inline struct intel_dp *enc_to_intel_dp(struct drm_encoder *encoder)
{
 return &enc_to_dig_port(encoder)->dp;
}
