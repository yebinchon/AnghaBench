
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int base; } ;


 struct intel_dp* enc_to_intel_dp (int *) ;
 TYPE_1__* intel_attached_encoder (struct drm_connector*) ;

__attribute__((used)) static struct intel_dp *intel_attached_dp(struct drm_connector *connector)
{
 return enc_to_intel_dp(&intel_attached_encoder(connector)->base);
}
